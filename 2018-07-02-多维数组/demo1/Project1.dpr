program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;

    {声明一个动态的二维数组}
type
    TStringDynamicArray = array of array of string;

    {声明一个静态的二维数组}
type
    TStringStaticArray = array[0..1] of array[0..2] of string;

var
    DynamicNameArray: TStringDynamicArray;
    StaticNameArray: TStringStaticArray;

var
    Indexs: Integer;
    I: Integer;

{初始化动态的二维数组}
procedure InitArray();
begin
    DynamicNameArray := [['你好', '中国', '萧蔷'], ['张三丰', '成龙', '吴京']];

    for Indexs := Low(DynamicNameArray) to High(DynamicNameArray) do begin

        for I := Low(DynamicNameArray[Indexs]) to High(DynamicNameArray[Indexs]) do begin
            Writeln(DynamicNameArray[Indexs][I]);
        end;

    end;
end;

begin

    StaticNameArray[0][0] := '春暖花开';
    Readln;
end.

