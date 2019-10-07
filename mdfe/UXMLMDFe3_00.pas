unit uXMLMDFe3_00;

interface

uses
  Classes, SysUtils, Dialogs, SqlExpr, DmdDatabase, DateUtils, Variants, enviMDFe_v300, uDMCadMDFe, DB, UDMEnvio, XMLDoc;

  function fnc_Gerar_XML(fDMEnvio: TDMEnvio): WideString;
  function fnc_LocalServidorNFe(fDMEnvio: TDMEnvio): String;
  procedure prc_Modal_Rodoviario(fDMEnvio: TDMEnvio);

var
  vChaveAcesso_MDFe, vCod_Chave_MDFe, vDig_Chave_MDFe: String;
  vProtocolo_MDFe, vRecibo_MDFe, vDtRecibo_MDFe, vDtProtocolo_MDFe: String;

implementation

uses uUtilPadrao, uNFeComandos, mdfeModalRodoviario_v300;

var
  enviMDFe: IXMLTEnviMDFe;
  rodo: IXMLRodo;
  sChave: TStringList;
  InfMunCarrega: IXMLInfMunCarrega;
  condutor: IXMLRodo_veicTracao_condutor;
  Reboque: IXMLRodo_veicReboque;
  descarga: IXMLInfMunDescarga;
  nfe: IXMLInfNFe;
  lacre: IXMLLacres;
  autorizado: IXMLAutXML;
  Percurso: IXMLInfPercurso;
  Seguro: IXMLSeg;


function fnc_LocalServidorNFe(fDMEnvio: TDMEnvio): String;
begin
  Result := fDMEnvio.qParametrosLOCALSERVIDORNFE.AsString;
  if (trim(fDMEnvio.qFilialLOCALSERVIDORNFE.AsString) <> '') and not(fDMEnvio.qFilialLOCALSERVIDORNFE.IsNull) then
    Result := fDMEnvio.qFilialLOCALSERVIDORNFE.AsString;
end;

function fnc_Gerar_XML(fDMEnvio: TDMEnvio): WideString;
var
  vCNPJEmit: String;
  vCodUF: String;
  vAno, vMes: String;
  Texto: String;
  vQRCode: WideString;
begin
  fDMEnvio.qFilial.Close;
  fDMEnvio.qFilial.ParamByName('ID').AsInteger := fDMEnvio.cdsMDFeFILIAL.AsInteger;
  fDMEnvio.qFilial.Open;

  vCNPJEmit := Monta_Texto(fDMEnvio.cdsMDFeCNPJ_CPF_FILIAL.AsString,14);

  vAno := IntToStr(YearOf(fDMEnvio.cdsMDFeDTEMISSAO.AsDateTime));
  vAno := copy(vAno,3,2);
  vMes := FormatFloat('00',MonthOf(fDMEnvio.cdsMDFeDTEMISSAO.AsDateTime));
  vChaveAcesso_MDFe := '';
  vCod_Chave_MDFe   := '';
  vDig_Chave_MDFe   := '';

  sChave := TStringList.Create;
  try
    sChave.Delimiter := '|';
    sChave.DelimitedText := MDFe_CriarChave(fnc_LocalServidorNFe(FDMEnvio),
                                            vCNPJEmit,
                                            fDMEnvio.cdsMDFeCODUF_FILIAL.AsString,
                                            vAno,
                                            vMes,
                                            '58',
                                            fDMEnvio.cdsMDFeSERIE.AsString,
                                            fDMEnvio.cdsMDFeNUM_MANIFESTO.AsString,
                                            fDMEnvio.cdsMDFeFORMA_EMISSAO.AsString);
    vChaveAcesso_MDFe := sChave[0];
    vCod_Chave_MDFe   := sChave[1];
    vDig_Chave_MDFe   := sChave[2];
  finally
    FreeAndNil(sChave);
  end;

  // Não pode mudar a ordem dos campos adicionados
  enviMDFe := NewenviMDFe;

  enviMDFe.MDFe.InfMDFe.Id     := 'MDFe' + vChaveAcesso_MDFe;
  enviMDFe.MDFe.InfMDFe.Versao := fDMEnvio.qParametros_MDFeVERSAO_EMISSAO.AsString;

  enviMDFe.MDFe.InfMDFe.Ide.CUF    := fDMEnvio.cdsMDFeCODUF_FILIAL.AsString;
  enviMDFe.MDFe.InfMDFe.Ide.TpAmb  := fDMEnvio.cdsMDFeTIPO_AMBIENTE.AsString;
  enviMDFe.MDFe.InfMDFe.Ide.TpEmit := fDMEnvio.cdsMDFeTIPO_EMITENTE.AsString;
  if (fDMEnvio.cdsMDFeTIPO_TRANSPORTADOR.AsString = '1') or (fDMEnvio.cdsMDFeTIPO_TRANSPORTADOR.AsString = '2')
   or (fDMEnvio.cdsMDFeTIPO_TRANSPORTADOR.AsString = '3') then
    enviMDFe.MDFe.InfMDFe.Ide.TpTransp := fDMEnvio.cdsMDFeTIPO_TRANSPORTADOR.AsString;
  enviMDFe.MDFe.InfMDFe.Ide.Mod_   := '58';
  enviMDFe.MDFe.InfMDFe.Ide.Serie  := fDMEnvio.cdsMDFeSERIE.AsString;
  enviMDFe.MDFe.InfMDFe.Ide.NMDF   := fDMEnvio.cdsMDFeNUM_MANIFESTO.AsString;
  enviMDFe.MDFe.InfMDFe.Ide.CMDF   := vCod_Chave_MDFe;
  enviMDFe.MDFe.InfMDFe.Ide.CDV    := vDig_Chave_MDFe;
  enviMDFe.MDFe.InfMDFe.Ide.Modal  := fDMEnvio.cdsMDFeMODALIDADE_TRANSP.AsString;
  if not(fDMEnvio.cdsMDFeHREMISSAO.IsNull) then
    vHrEmissaoNFe := fDMEnvio.cdsMDFeHREMISSAO.AsDateTime
  else
    vHrEmissaoNFe := Now;
  Texto := '';
  if uUtilPadrao.fnc_HorarioVerao then
  begin
    if trim(fDMEnvio.qParametrosFUSOHORARIO_VERAO.AsString) <> '' then
      Texto := FormatDateTime('YYYY-MM-DD',fDMEnvio.cdsMDFeDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + fDMEnvio.qParametrosFUSOHORARIO_VERAO.AsString
    else
      Texto := FormatDateTime('YYYY-MM-DD',fDMEnvio.cdsMDFeDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + PegaTimeZone;
  end
  else
  begin
    if trim(fDMEnvio.qParametrosFUSOHORARIO.AsString) <> '' then
      Texto := FormatDateTime('YYYY-MM-DD',fDMEnvio.cdsMDFeDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + fDMEnvio.qParametrosFUSOHORARIO.AsString
    else
      Texto := FormatDateTime('YYYY-MM-DD',fDMEnvio.cdsMDFeDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',vHrEmissaoNFe) + PegaTimeZone;
  end;
  //enviMDFe.MDFe.InfMDFe.Ide.DhEmi := DateTimeToUTC(Now);
  enviMDFe.MDFe.InfMDFe.Ide.DhEmi   := Texto;
  enviMDFe.MDFe.InfMDFe.Ide.TpEmis  := fDMEnvio.cdsMDFeFORMA_EMISSAO.AsString;
  enviMDFe.MDFe.InfMDFe.Ide.ProcEmi := fDMEnvio.cdsMDFeTIPO_EMISSAO.AsString;
  enviMDFe.MDFe.InfMDFe.Ide.VerProc := fDMEnvio.qParametros_MDFeVERSAO_EMISSAO.AsString;
  enviMDFe.MDFe.InfMDFe.Ide.UFIni   := fDMEnvio.cdsMDFeUF_CARREGAMENTO.AsString;
  enviMDFe.MDFe.InfMDFe.Ide.UFFim   := fDMEnvio.cdsMDFeUF_DESCARREGAMENTO.AsString;

  //Municipio de Carregamento
  fDMEnvio.cdsMDFe_Cidade_Car.First;
  while not fDMEnvio.cdsMDFe_Cidade_Car.Eof do
  begin
    InfMunCarrega := enviMDFe.MDFe.InfMDFe.Ide.InfMunCarrega.Add;
    InfMunCarrega.CMunCarrega := fDMEnvio.cdsMDFe_Cidade_CarCODMUNICIPIO.AsString;
    InfMunCarrega.XMunCarrega := fDMEnvio.cdsMDFe_Cidade_CarNOME_CIDADE.AsString;
    fDMEnvio.cdsMDFe_Cidade_Car.Next;
  end;

  //Percurso  Se a UF for igual a inicial e final, não precisa informar aqui
  fDMEnvio.cdsMDFe_Percurso.First;
  while not fDMEnvio.cdsMDFe_Percurso.Eof do
  begin
    Percurso := envimdfe.MDFe.InfMDFe.Ide.InfPercurso.Add;
    Percurso.UFPer := fDMEnvio.cdsMDFe_PercursoUF.AsString;
    fDMEnvio.cdsMDFe_Percurso.Next;
  end;

  Texto := '';
  if fDMEnvio.cdsMDFeDTINICIO.AsDateTime > 10 then
  begin
    if uUtilPadrao.fnc_HorarioVerao then
    begin
      if trim(fDMEnvio.qParametrosFUSOHORARIO_VERAO.AsString) <> '' then
        Texto := FormatDateTime('YYYY-MM-DD',fDMEnvio.cdsMDFeDTINICIO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMEnvio.cdsMDFeHRINICIO.AsDateTime) + fDMEnvio.qParametrosFUSOHORARIO_VERAO.AsString
      else
        Texto := FormatDateTime('YYYY-MM-DD',fDMEnvio.cdsMDFeDTINICIO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMEnvio.cdsMDFeHRINICIO.AsDateTime) + PegaTimeZone;
    end
    else
    begin
      if trim(fDMEnvio.qParametrosFUSOHORARIO.AsString) <> '' then
        Texto := FormatDateTime('YYYY-MM-DD',fDMEnvio.cdsMDFeDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMEnvio.cdsMDFeHRINICIO.AsDateTime) + fDMEnvio.qParametrosFUSOHORARIO.AsString
      else
        Texto := FormatDateTime('YYYY-MM-DD',fDMEnvio.cdsMDFeDTEMISSAO.AsDateTime) + 'T' + FormatDateTime('hh:nn:ss',fDMEnvio.cdsMDFeHRINICIO.AsDateTime) + PegaTimeZone;
    end;
    enviMDFe.MDFe.InfMDFe.Ide.DhIniViagem := Texto;
  end;

  //Dados do Emitente
  enviMDFe.MDFe.InfMDFe.Emit.CNPJ  := Monta_Numero(fDMEnvio.cdsMDFeCNPJ_CPF_FILIAL.AsString,14);
  enviMDFe.MDFe.InfMDFe.Emit.IE    := Monta_Numero(fDMEnvio.cdsMDFeINSC_ESTADUAL_FILIAL.AsString,0);
  enviMDFe.MDFe.InfMDFe.Emit.XNome := TirarAcento(fDMEnvio.cdsMDFeNOME_FILIAL.AsString);
  if trim(fDMEnvio.cdsMDFeFANTASIA_FILIAL.AsString) <> '' then
    enviMDFe.MDFe.InfMDFe.Emit.XFant := TirarAcento(fDMEnvio.cdsMDFeFANTASIA_FILIAL.AsString);
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.XLgr := TirarAcento(fDMEnvio.cdsMDFeEND_FILIAL.AsString);
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.Nro  := fDMEnvio.cdsMDFeNUM_END_FILIAL.AsString;
  if trim(fDMEnvio.cdsMDFeCOMPLEMENTO_END_FILIAL.AsString) <> '' then
    enviMDFe.MDFe.InfMDFe.Emit.enderEmit.XCpl := TirarAcento(fDMEnvio.cdsMDFeCOMPLEMENTO_END_FILIAL.AsString);
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.XBairro := TirarAcento(fDMEnvio.cdsMDFeBAIRRO_FILIAL.AsString);

  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.CMun :=  fDMEnvio.cdsMDFeCODMUNICIPIO_FILIAL.AsString;
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.XMun := TirarAcento(fDMEnvio.cdsMDFeCIDADE_FILIAL.AsString);
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.CEP  := Monta_Numero(fDMEnvio.cdsMDFeCEP_FILIAL.AsString,8);
  enviMDFe.MDFe.InfMDFe.Emit.enderEmit.UF   := fDMEnvio.cdsMDFeUF_FILIAL.AsString;
  if trim(fDMEnvio.cdsMDFeFONE_FILIAL.AsString) <> '' then
    enviMDFe.MDFe.InfMDFe.Emit.enderEmit.Fone := Monta_Numero(fDMEnvio.cdsMDFeDDD_FILIAL.AsString + fDMEnvio.cdsMDFeFONE_FILIAL.AsString,0);
  if trim(fDMEnvio.cdsMDFeEMAIL_NFE.AsString) <> '' then
    enviMDFe.MDFe.InfMDFe.Emit.enderEmit.Email := fDMEnvio.cdsMDFeEMAIL_NFE.AsString;

  // Existem 4 tipos de InfModal
  // Aeroviário  - IXMLAereo
  // Aquaviário  - IXMLAquav
  // Ferroviário - IXMLFerrov
  // Rodoviário  - IXMLRodo
  if fDMEnvio.cdsMDFeMODALIDADE_TRANSP.AsString = '1' then
    prc_Modal_Rodoviario(fDMEnvio);

  //Cidade Descarregamento
  fDMEnvio.cdsMDFe_Cidade_Des.First;
  while not fDMEnvio.cdsMDFe_Cidade_Des.Eof do
  begin
    descarga := enviMDFe.MDFe.InfMDFe.InfDoc.Add;
    descarga.CMunDescarga := fDMEnvio.cdsMDFe_Cidade_DesCODMUNICIPIO.AsString;
    descarga.XMunDescarga := TirarAcento(fDMEnvio.cdsMDFe_Cidade_DesNOME_CIDADE.AsString);

    //Chave de Acesso da NFe
    fDMEnvio.cdsMDFe_NFe.First;
    while not fDMEnvio.cdsMDFe_NFe.Eof do
    begin
      nfe := descarga.InfNFe.Add;
      nfe.ChNFe := fDMEnvio.cdsMDFe_NFeCHAVE_ACESSO.AsString;
      fDMEnvio.cdsMDFe_NFe.Next;
    end;
    //**************

    fDMEnvio.cdsMDFe_Cidade_Des.Next;
  end;
  //**************

  //Seguro
  fDMEnvio.cdsMDFe_Seguradora.First;
  while not fDMEnvio.cdsMDFe_Seguradora.Eof do
  begin
    Seguro := enviMDFe.MDFe.InfMDFe.Seg.Add;
    Seguro.InfResp.RespSeg := fDMEnvio.cdsMDFe_SeguradoraRESPONSAVEL_SEGURO.AsString;
    if fDMEnvio.cdsMDFe_SeguradoraPESSOA_RESP_SEG.AsString = 'J' then
      Seguro.InfResp.CNPJ := Monta_Numero(fDMEnvio.cdsMDFe_SeguradoraCNPJ_CPF_RESP_SEG.AsString,14)
    else
      Seguro.InfResp.CPF := Monta_Numero(fDMEnvio.cdsMDFe_SeguradoraCNPJ_CPF_RESP_SEG.AsString,11);
    if fDMEnvio.cdsMDFe_SeguradoraID_SEGURADORA.AsInteger > 0 then
    begin
      Seguro.InfSeg.XSeg := TirarAcento(fDMEnvio.cdsMDFe_SeguradoraNOME_SEGURADORA.AsString);
      Seguro.InfSeg.CNPJ := Monta_Numero(fDMEnvio.cdsMDFe_SeguradoraCNPJ_SEGURADORA.AsString,14);
    end;
    if trim(fDMEnvio.cdsMDFe_SeguradoraNUM_APOLICE.AsString) <> '' then
      Seguro.NApol := fDMEnvio.cdsMDFe_SeguradoraNUM_APOLICE.AsString;
    fDMEnvio.cdsMDFe_Averbacao.First;
    while not fDMEnvio.cdsMDFe_Averbacao.Eof do
    begin
      Seguro.NAver.Add(fDMEnvio.cdsMDFe_AverbacaoNUM_AVERBACAO.AsString);
      fDMEnvio.cdsMDFe_Averbacao.Next;
    end;
    fDMEnvio.cdsMDFe_Seguradora.Next;
  end;

  //******************

  enviMDFe.MDFe.InfMDFe.Tot.QCTe   := '0';
  enviMDFe.MDFe.InfMDFe.Tot.QNFe   := IntToStr(fDMEnvio.cdsMDFeQTD_NFE.AsInteger);
  enviMDFe.MDFe.InfMDFe.Tot.QMDFe  := IntToStr(fDMEnvio.cdsMDFeQTD_MDFE.AsInteger);
  enviMDFe.MDFe.InfMDFe.Tot.VCarga := Replace(FormatFloat('0.00',fDMEnvio.cdsMDFeVLR_TOTAL.AsFloat),',','.');
  enviMDFe.MDFe.InfMDFe.Tot.CUnid  := fDMEnvio.cdsMDFeUNIDADE_PESO.AsString;
  enviMDFe.MDFe.InfMDFe.Tot.QCarga := Replace(FormatFloat('0.0000',fDMEnvio.cdsMDFePESO_BRUTO.AsFloat),',','.');

  //Lacres
  fDMEnvio.cdsMDFe_Lacre.First;
  while not fDMEnvio.cdsMDFe_Lacre.Eof do
  begin
    lacre        := enviMDFe.MDFe.InfMDFe.Lacres.Add;
    lacre.NLacre := fDMEnvio.cdsMDFe_LacreNUM_LACRE.AsString;
    fDMEnvio.cdsMDFe_Lacre.Next;
  end;

  // Autorizados a baixar o XML via consultar distribuição
  // Se não adicionar o próprio CNPJ quem emite não consulta
  fDMEnvio.cdsMDFe_AutXML.First;
  while not fDMEnvio.cdsMDFe_AutXML.Eof do
  begin
    autorizado := enviMDFe.MDFe.InfMDFe.AutXML.Add;
    if fDMEnvio.cdsMDFe_AutXMLPESSOA.AsString = 'J' then
      autorizado.CNPJ := Monta_Numero(fDMEnvio.cdsMDFe_AutXMLCNPJ_CPF.AsString,14)
    else
      autorizado.CPF := Monta_Numero(fDMEnvio.cdsMDFe_AutXMLCNPJ_CPF.AsString,11);
    fDMEnvio.cdsMDFe_AutXML.Next;
  end;
  //**********

  //enviMDFe.MDFe.InfMDFe.InfAdic.InfAdFisco := 'Informacoes de Adcionais do Fisco. Operacao nao tributada.';
  if trim(fDMEnvio.cdsMDFeINF_ADICIONAIS.Value) <> '' then
    enviMDFe.MDFe.InfMDFe.InfAdic.InfCpl := TirarAcento(fDMEnvio.cdsMDFeINF_ADICIONAIS.Value);


  vQRCode := MDFe_GerarQRCodeURL(fnc_LocalServidorNFe(fDMEnvio),
                                 vCNPJEmit,
                                 'https://dfe-portal.svrs.rs.gov.br/mdfe/qrCode',
                                 vChaveAcesso_MDFe);
  enviMDFe.MDFe.InfMDFeSupl.QrCodMDFe := vQRCode;

  Result := FormatXMLData( '<?xml version="1.0" encoding="UTF-8"?>' + enviMDFe.MDFe.XML );
end;

procedure prc_Modal_Rodoviario(fDMEnvio: TDMEnvio);
begin
  rodo := Newrodo;
  //Veículo
  if trim(fDMEnvio.cdsMDFeRNTRC.AsString) <> '' then  //17/10/2018
    rodo.InfANTT.RNTRC := fDMEnvio.cdsMDFeRNTRC.AsString;

  //CIOT Ver aqui 
  //rodo.VeicTracao.CInt  := IntToStr(fDMEnvio.cdsMDFeID_VEICULO.AsInteger);
  rodo.VeicTracao.Placa := trim(fDMEnvio.cdsMDFePLACA.AsString);
  if trim(fDMEnvio.cdsMDFeRENAVAM.AsString) <> '' then
    rodo.VeicTracao.RENAVAM := fDMEnvio.cdsMDFeRENAVAM.AsString;
  rodo.VeicTracao.Tara  := FormatFloat('0',fDMEnvio.cdsMDFeTARA_KG.AsFloat);
  if StrToFloat(FormatFloat('0',fDMEnvio.cdsMDFeCAPACIDADE_KG.AsFloat)) > 0 then
    rodo.VeicTracao.CapKG := Replace(FormatFloat('0',fDMEnvio.cdsMDFeCAPACIDADE_KG.AsFloat),',','.');
  if StrToFloat(FormatFloat('0',fDMEnvio.cdsMDFeCAPACIDADE_M3.AsFloat)) > 0 then
    rodo.VeicTracao.CapM3 := Replace(FormatFloat('0',fDMEnvio.cdsMDFeCAPACIDADE_M3.AsFloat),',','.');

  if fDMEnvio.cdsMDFeID_PROPRIETARIO.AsInteger > 0 then
  begin
    if fDMEnvio.cdsMDFeCNPJ_CPF_PROPRIETARIO.AsString <> fDMEnvio.cdsMDFeCNPJ_CPF_FILIAL.AsString then
    begin
      if fDMEnvio.cdsMDFePESSOA_PROPRIETARIO.AsString = 'J' then
        rodo.VeicTracao.Prop.CNPJ := Monta_Numero(fDMEnvio.cdsMDFeCNPJ_CPF_PROPRIETARIO.AsString,14)
      else
        rodo.VeicTracao.Prop.CPF := Monta_Numero(fDMEnvio.cdsMDFeCNPJ_CPF_PROPRIETARIO.AsString,11);
      if trim(fDMEnvio.cdsMDFeRNTRC_PROPRIETARIO.AsString) <> '' then
        rodo.VeicTracao.Prop.RNTRC := fDMEnvio.cdsMDFeRNTRC_PROPRIETARIO.AsString;
      //else //17/10/2018
        //rodo.VeicTracao.Prop.RNTRC := '00000000';
      rodo.VeicTracao.Prop.XNome := fDMEnvio.cdsMDFeNOME_PROPRIETARIO.AsString;
      if trim(fDMEnvio.cdsMDFeINSC_ESTADUAL_PROPRIETARIO.AsString) <> '' then
      begin
        rodo.VeicTracao.Prop.IE := Monta_Numero(fDMEnvio.cdsMDFeINSC_ESTADUAL_PROPRIETARIO.AsString,0);
        rodo.VeicTracao.Prop.UF := fDMEnvio.cdsMDFeUF_PROPRIETARIO.AsString;
      end;
      rodo.VeicTracao.Prop.TpProp := fDMEnvio.cdsMDFeTIPO_REG_PROPRIETARIO.AsString;
    end;
  end;

  fDMEnvio.cdsMDFe_Condutor.First;
  while not fDMEnvio.cdsMDFe_Condutor.Eof do
  begin
    condutor := rodo.VeicTracao.Condutor.Add;
    condutor.XNome := fDMEnvio.cdsMDFe_CondutorNOME.AsString;
    condutor.CPF   := Monta_Numero(fDMEnvio.cdsMDFe_CondutorCPF.AsString,11);
    fDMEnvio.cdsMDFe_Condutor.Next;
  end;

  rodo.VeicTracao.TpRod := fDMEnvio.cdsMDFeTIPO_RODADO.AsString;
  rodo.VeicTracao.TpCar := fDMEnvio.cdsMDFeTIPO_CARROCERIA.AsString;
  rodo.VeicTracao.UF    := fDMEnvio.cdsMDFeUF_PLACA.AsString;

  //aqui era o proprietário foi alteardo para antes do condutor.


  //*************************

  //Reboque
  fDMEnvio.cdsMDFe_Reboque.First;
  while not fDMEnvio.cdsMDFe_Reboque.Eof do
  begin
    Reboque := rodo.VeicReboque.Add;
    //13/05/2019
    //Reboque.CInt  := IntToStr(fDMEnvio.cdsMDFe_ReboqueID_VEICULO.AsInteger);
    Reboque.Placa := trim(fDMEnvio.cdsMDFe_ReboquePLACA.AsString);
    Reboque.RENAVAM := trim(fDMEnvio.cdsMDFe_ReboqueRENAVAM.AsString);
    Reboque.Tara    := FormatFloat('0',fDMEnvio.cdsMDFe_ReboqueTARA_KG.AsFloat);
    if StrToFloat(FormatFloat('0.0000',fDMEnvio.cdsMDFe_ReboqueCAPACIDADE_KG.AsFloat)) > 0 then
      Reboque.CapKG := FormatFloat('0',fDMEnvio.cdsMDFe_ReboqueCAPACIDADE_KG.AsFloat);
    if StrToFloat(FormatFloat('0.0000',fDMEnvio.cdsMDFe_ReboqueCAPACIDADE_M3.AsFloat)) > 0 then
      Reboque.CapM3 := FormatFloat('0',fDMEnvio.cdsMDFe_ReboqueCAPACIDADE_M3.AsFloat);
    if fDMEnvio.cdsMDFe_ReboqueID_PROPRIETARIO.AsInteger > 0 then
    begin
      if fDMEnvio.cdsMDFe_ReboqueCNPJ_CPF_PROPRIETARIO.AsString <> fDMEnvio.cdsMDFeCNPJ_CPF_FILIAL.AsString then
      begin
        if fDMEnvio.cdsMDFe_ReboquePESSOA_PROPRIETARIO.AsString = 'J' then
          Reboque.Prop.CNPJ := Monta_Numero(fDMEnvio.cdsMDFe_ReboqueCNPJ_CPF_PROPRIETARIO.AsString,14)
        else
          Reboque.Prop.CPF := Monta_Numero(fDMEnvio.cdsMDFe_ReboqueCNPJ_CPF_PROPRIETARIO.AsString,11);
        if trim(fDMEnvio.cdsMDFe_ReboqueRNTRC_PROPRIETARIO.AsString) <> '' then
          Reboque.Prop.RNTRC := fDMEnvio.cdsMDFe_ReboqueRNTRC_PROPRIETARIO.AsString;
        //else //17/10/2018
          //Reboque.Prop.RNTRC := '00000000';
          //Reboque.Prop.RNTRC := '';
        Reboque.Prop.XNome  := fDMEnvio.cdsMDFe_ReboqueNOME_PROPRIETARIO.AsString;
        if trim(fDMEnvio.cdsMDFe_ReboqueINSC_ESTADUAL_PROPRIETARIO.AsString) <> '' then
          Reboque.Prop.IE     := fDMEnvio.cdsMDFe_ReboqueINSC_ESTADUAL_PROPRIETARIO.AsString;
        Reboque.Prop.UF     := fDMEnvio.cdsMDFe_ReboqueUF_PROPRIETARIO.AsString;
        Reboque.Prop.TpProp := fDMEnvio.cdsMDFe_ReboqueTIPO_REG_PROPRIETARIO.AsString;
      end;
    end;

    Reboque.TpCar := fDMEnvio.cdsMDFe_ReboqueTIPO_CARROCERIA.AsString;
    Reboque.UF    := fDMEnvio.cdsMDFe_ReboqueUF_PLACA.AsString;


    fDMEnvio.cdsMDFe_Reboque.Next;
  end;
  //***************

  if trim(fDMEnvio.cdsMDFeCOD_AG_PORTO.AsString) <> '' then
    rodo.CodAgPorto := fDMEnvio.cdsMDFeCOD_AG_PORTO.AsString;
  //***************

  rodo.ParentNode.XML; // tem que fazer isto caso contrário gera erro.

  //enviMDFe.MDFe.InfMDFe.InfModal.VersaoModal := fDMEnvio.qParametros_MDFeVERSAO_MODAL.AsString; '3.00';
  enviMDFe.MDFe.InfMDFe.InfModal.VersaoModal := fDMEnvio.qParametros_MDFeVERSAO_MODAL.AsString;
  enviMDFe.MDFe.InfMDFe.InfModal.ChildNodes.Add( rodo );
end;         

end.
