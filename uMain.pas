unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Graphics,
  Vcl.WinXPanels, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.Buttons, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.FileCtrl, System.JSON, System.ImageList, Vcl.ImgList,
  System.Math,
  uManipuladorDeArquivos;

type
  TfmMainFiles = class(TForm)
    pnlTop: TPanel;
    pnlSide: TPanel;
    pnlBackground: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnOrganizacao: TButton;
    pnlListaArquivos: TPanel;
    cpPrincipal: TCardPanel;
    cOrganizacao: TCard;
    grListaArquivos: TDBGrid;
    fmtListaArquivos: TFDMemTable;
    dsListaArquivos: TDataSource;
    fmtListaArquivosSELECAO: TIntegerField;
    fmtListaArquivosNOME: TStringField;
    fmtListaArquivosDATA_MODIFICAO: TDateTimeField;
    fmtListaArquivosDATA_CRIACAO: TDateTimeField;
    fmtListaArquivosTIPO: TIntegerField;
    fmtListaArquivosEXTENSAO: TStringField;
    fmtListaArquivosTAMANHO: TLargeintField;
    fmtListaArquivosCAMINHO_COMPLETO: TStringField;
    ilListaImagens: TImageList;
    Label4: TLabel;
    pnlSelecaoDiretorio: TPanel;
    Label3: TLabel;
    edDiretorio: TEdit;
    btnProcurarDiretorio: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btnVoltarDiretorio: TButton;
    pnlFiltros: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure btnProcurarDiretorioClick(Sender: TObject);
    procedure fmtListaArquivosTAMANHOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure grListaArquivosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grListaArquivosTitleClick(Column: TColumn);
    procedure grListaArquivosDblClick(Sender: TObject);
    procedure btnVoltarDiretorioClick(Sender: TObject);
    procedure fmtListaArquivosAfterOpen(DataSet: TDataSet);
    procedure edDiretorioChange(Sender: TObject);
    procedure grListaArquivosCellClick(Column: TColumn);
    procedure fmtListaArquivosTIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    FSortColumn: string;
    FSortDirection: Boolean; // True = Ascendente, False = Descendente
    procedure LimpaTextoColunas;
    procedure CarregaRegistros(ADiretorio: string);
    function ConvertBytes(SizeInBytes: Int64): string;
    procedure GridCheckboxAction(AValue: integer);
  public
    { Public declarations }
  end;

var
  fmMainFiles: TfmMainFiles;

const
  NAO = 0;
  SIM = 1;

implementation

{$R *.dfm}

procedure TfmMainFiles.btnProcurarDiretorioClick(Sender: TObject);
var
  lDiretorio: string;
begin
  lDiretorio := edDiretorio.Text;
  if SelectDirectory('Selecionar diretório', '', lDiretorio) then
  begin
    edDiretorio.Text := lDiretorio;
    CarregaRegistros(lDiretorio);
  end;
end;

procedure TfmMainFiles.btnVoltarDiretorioClick(Sender: TObject);
var
  lDiretorioAnterior: string;
begin
  lDiretorioAnterior := ExtractFileDir(edDiretorio.Text);
  if DirectoryExists(lDiretorioAnterior) then
  begin
    edDiretorio.Text := lDiretorioAnterior;
    CarregaRegistros(lDiretorioAnterior);
  end;
end;

procedure TfmMainFiles.CarregaRegistros(ADiretorio: string);
var
  lArquivos: TGerenciadorArquivos;
  lJsonResultado: string;
  lJson: TJSONArray;
  I: Integer;
begin
  FSortColumn := '';
  FSortDirection := True;
  fmtListaArquivos.IndexFieldNames := '';
  fmtListaArquivos.Close;
  fmtListaArquivos.Open;
  lArquivos := TGerenciadorArquivos.Create;
  try
    lJsonResultado := lArquivos.ListarElementos(ADiretorio);
    lJson := TJSONValue.ParseJSONValue(lJsonResultado) as TJSONArray;
    for I := 0 to lJson.Count - 1 do
    begin
      fmtListaArquivos.Append;
      fmtListaArquivosNOME.AsString := lJson.Items[I].GetValue<string>('nome', '');
      fmtListaArquivosDATA_MODIFICAO.AsDateTime := StrToDateTimeDef(lJson.Items[I].GetValue<string>('dataModificacao', ''), 0);
      if StrToDateTimeDef(lJson.Items[I].GetValue<string>('dataCriacao', ''), 0) = 0 then
        fmtListaArquivosDATA_CRIACAO.Clear
      else
        fmtListaArquivosDATA_CRIACAO.AsDateTime := StrToDateTimeDef(lJson.Items[I].GetValue<string>('dataCriacao', ''), 0);
      if lJson.Items[I].GetValue<integer>('tamanho', 0) = 0 then
        fmtListaArquivosTAMANHO.Clear
      else
        fmtListaArquivosTAMANHO.AsInteger := lJson.Items[I].GetValue<integer>('tamanho', 0);
      fmtListaArquivosTIPO.AsInteger := lJson.Items[I].GetValue<integer>('tipo', 0);
      fmtListaArquivosEXTENSAO.AsString := lJson.Items[I].GetValue<string>('extensao', '');
      fmtListaArquivosCAMINHO_COMPLETO.AsString := lJson.Items[I].GetValue<string>('caminhoCompleto', '');
      fmtListaArquivos.Post;
    end;
    fmtListaArquivos.First;
  finally
    lJson.Free;
    lArquivos.Free;
  end;
end;

procedure TfmMainFiles.FormCreate(Sender: TObject);
begin
  fmtListaArquivos.Open;
end;

procedure TfmMainFiles.GridCheckboxAction(AValue: integer);
begin
  fmtListaArquivos.Edit;
  fmtListaArquivosSELECAO.AsInteger := AValue;
  fmtListaArquivos.Post;
  if AValue = NAO then
  begin
  end
  else
  begin
  end;
end;

procedure TfmMainFiles.grListaArquivosCellClick(Column: TColumn);
begin
  if fmtListaArquivos.IsEmpty then
    Exit;
  if Column.FieldName = 'SELECAO' then
    GridCheckboxAction(IfThen(Column.Field.AsInteger = SIM, NAO, SIM));
end;

procedure TfmMainFiles.grListaArquivosDblClick(Sender: TObject);
begin
  if fmtListaArquivos.IsEmpty then
    Exit;
  if fmtListaArquivosTIPO.AsInteger = System.SysUtils.faDirectory then
  begin
    edDiretorio.Text := fmtListaArquivosCAMINHO_COMPLETO.AsString;
    CarregaRegistros(edDiretorio.Text);
  end;
end;

procedure TfmMainFiles.grListaArquivosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  ImgIndex: Integer;
  ImgWidth, ImgHeight: Integer;
  CenterX, CenterY: Integer;
  Symbol: string;
  TextRect, CheckRect: TRect;
  IsChecked: boolean;
begin
  if Column.FieldName = 'TIPO' then
  begin
    if Column.Field.IsNull then
      Exit;
    // Define o índice da imagem com base no valor do campo
    case Column.Field.AsInteger of
      System.SysUtils.faInvalid   : ImgIndex := 5;
      System.SysUtils.faReadOnly  : ImgIndex := 6;
      System.SysUtils.faHidden    : ImgIndex := 4;
      System.SysUtils.faSysFile   : ImgIndex := 8;
      System.SysUtils.faVolumeID  : ImgIndex := 8;
      System.SysUtils.faDirectory : ImgIndex := 3;
      System.SysUtils.faTemporary : ImgIndex := 9;
      System.SysUtils.faSymLink   : ImgIndex := 7;
      System.SysUtils.faCompressed: ImgIndex := 1;
      System.SysUtils.faEncrypted : ImgIndex := 2;
      else ImgIndex := 0;
    end;

    // Obtemos as dimensões da imagem
    ImgWidth := ilListaImagens.Width;
    ImgHeight := ilListaImagens.Height;

    // Calculamos as coordenadas para centralizar a imagem na célula
    CenterX := Rect.Left + (Rect.Width - ImgWidth) div 2;
    CenterY := Rect.Top + (Rect.Height - ImgHeight) div 2;

    // Desenhamos o fundo da célula e a imagem
    grListaArquivos.Canvas.FillRect(Rect); // Preenche o fundo da célula
    ilListaImagens.Draw(grListaArquivos.Canvas, CenterX, CenterY, ImgIndex);
  end
  else
  if Column.FieldName = 'SELECAO' then
  begin
    if Column.Field.IsNull then
      Exit;
    IsChecked := Column.Field.AsInteger = 1;
    // Define a área do checkbox dentro da célula
    CheckRect := Rect;
    CheckRect.Left := Rect.Left + (Rect.Width - 16) div 2;  // Centraliza horizontalmente
    CheckRect.Top := Rect.Top + (Rect.Height - 16) div 2;  // Centraliza verticalmente
    CheckRect.Right := CheckRect.Left + 16;
    CheckRect.Bottom := CheckRect.Top + 16;

    // Preenche o fundo da célula
    grListaArquivos.Canvas.FillRect(Rect);

    // Desenha o checkbox
    DrawFrameControl(grListaArquivos.Canvas.Handle, CheckRect, DFC_BUTTON,
      DFCS_BUTTONCHECK or IfThen(IsChecked, DFCS_CHECKED, 0));
  end
  else
  begin
    // Processa o desenho padrão para outras colunas
    grListaArquivos.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TfmMainFiles.grListaArquivosTitleClick(Column: TColumn);
begin
  if Column.FieldName = 'SELECAO' then
  begin

    Exit;
  end;

  LimpaTextoColunas;
  if FSortColumn = Column.FieldName then
    FSortDirection := not FSortDirection // Alterna a direção
  else
    FSortDirection := True; // Padrão: ascendente

  FSortColumn := Column.FieldName;

  // Aplica a ordenação
  if FSortDirection then
  begin
    fmtListaArquivos.IndexFieldNames := FSortColumn + ':A'; // Ascendente
    fmtListaArquivos.FieldByName(Column.FieldName).DisplayLabel := '▲ ' + fmtListaArquivos.FieldByName(Column.FieldName).DisplayLabel;
  end
  else
  begin
    fmtListaArquivos.IndexFieldNames := FSortColumn + ':D'; // Descendente
    fmtListaArquivos.FieldByName(Column.FieldName).DisplayLabel := '▼ ' + fmtListaArquivos.FieldByName(Column.FieldName).DisplayLabel;
  end;

  grListaArquivos.Invalidate; // Atualiza o grid para exibir o símbolo
end;

procedure TfmMainFiles.LimpaTextoColunas;
var
  I: Integer;
begin
  for I := 0 to fmtListaArquivos.Fields.Count - 1 do
  begin
    fmtListaArquivos.Fields[I].DisplayLabel := StringReplace(fmtListaArquivos.Fields[I].DisplayLabel, '▲ ', '', [rfReplaceAll, rfIgnoreCase]);
    fmtListaArquivos.Fields[I].DisplayLabel := StringReplace(fmtListaArquivos.Fields[I].DisplayLabel, '▼ ', '', [rfReplaceAll, rfIgnoreCase]);
  end;
end;

function TfmMainFiles.ConvertBytes(SizeInBytes: Int64): string;
const
  Units: array[0..4] of string = ('B', 'KB', 'MB', 'GB', 'TB');
var
  Size: Extended;
  UnitIndex: Integer;
begin
  Size := SizeInBytes;
  UnitIndex := 0;

  // Enquanto o tamanho for maior ou igual a 1024, divida por 1024 e passe para a próxima unidade
  while (Size >= 1024) and (UnitIndex < High(Units)) do
  begin
    Size := Size / 1024;
    Inc(UnitIndex);
  end;

  // Formata o resultado com duas casas decimais e adiciona o símbolo correspondente
  Result := FormatFloat('0.##', Size) + ' ' + Units[UnitIndex];
end;

procedure TfmMainFiles.edDiretorioChange(Sender: TObject);
begin
  btnVoltarDiretorio.Enabled := Trim(edDiretorio.Text) <> EmptyStr;
end;

procedure TfmMainFiles.fmtListaArquivosAfterOpen(DataSet: TDataSet);
begin
  LimpaTextoColunas;
end;

procedure TfmMainFiles.fmtListaArquivosTAMANHOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsLargeInt > 0 then
    Text := ConvertBytes(Sender.AsLargeInt);
end;

procedure TfmMainFiles.fmtListaArquivosTIPOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := EmptyStr;
end;

end.
