unit uManipuladorDeArquivos;

interface

uses
  System.JSON, System.SysUtils, System.IOUtils, System.Classes;

type
  TGerenciadorArquivos = class
  private

  public
    function ListarElementos(ADiretorio: string): string;
  end;

implementation

{ TGerenciadorArquivos }

function TGerenciadorArquivos.ListarElementos(ADiretorio: string): string;
var
  lJson: TJSONArray;
  Search: TSearchRec;
  lNome: string;
  lTipo: integer;
  lTamanho: integer;
  lDataCriacao: string;
  lDataModificacao: TDateTime;
  lExtensao: string;
  lCaminhoCompleto: string;
begin
  Result := '[]';
  lJson := TJSONArray.Create;
  try
    // Buscar todos os arquivos e pastas no diretório
    if FindFirst(IncludeTrailingPathDelimiter(ADiretorio) + '*', faAnyFile, Search) = 0 then
    begin
      repeat
        if (Search.Name <> '.') and (Search.Name <> '..') then
        begin
          lCaminhoCompleto := IncludeTrailingPathDelimiter(ADiretorio) + Search.Name;
          lNome := Search.Name;
          lTipo := Search.Attr;
          lTamanho := Search.Size;
          if lTipo = faDirectory then //Sem data de criação
          begin
            lDataCriacao := '';
          end
          else  //Com data de criação
          begin
            lDataCriacao := DateTimeToStr(TFile.GetCreationTime(lCaminhoCompleto));
          end;
          lDataModificacao := FileDateToDateTime(Search.Time);
          lExtensao := ExtractFileExt(lCaminhoCompleto);

          lJson.Add(TJSONObject.Create
            .AddPair('nome', TJSONString.Create(lNome))
            .AddPair('tipo', TJSONNumber.Create(lTipo))
            .AddPair('tamanho', TJSONNumber.Create(lTamanho))
            .AddPair('dataCriacao', TJSONString.Create(lDataCriacao))
            .AddPair('dataModificacao', TJSONString.Create(DateTimeToStr(lDataModificacao)))
            .AddPair('extensao', TJSONString.Create(lExtensao))
            .AddPair('caminhoCompleto', TJSONString.Create(lCaminhoCompleto))
          );
        end;
      until FindNext(Search) <> 0;
      FindClose(Search);
    end;
    Result := lJson.ToJSON;
  finally
    lJson.Free;
  end;
end;

end.
