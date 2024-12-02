unit uFiltroRegistrosInterface;

interface

type
  IFiltroRegistro = interface
    ['{5FA898C6-7DA6-458C-B811-3D3FF31680ED}']
    function GetTextoFiltro: string;
    procedure SetFiltroExtensao(AFiltro: string);
  end;

implementation

end.
