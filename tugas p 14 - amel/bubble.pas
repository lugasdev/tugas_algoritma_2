Program bubble_npm;
uses crt, sysutils;

type
    data = array [1..12] of integer;

var
    i, ix, j, temp:integer;
    arr: data;

procedure tampil(arr:data);
begin
    for ix := 1 to Length(arr) do
        write(arr[ix], ' ');
end;

procedure bubblesort(var arr:data);
begin
    for i := 1 to (Length(arr) - 1) do
        begin
            for j := Length(arr) downto i+1 do
                begin
                    if (arr[j] < arr[j-1]) then
                        begin
                            temp := arr[j-1];
                            arr[j-1] := arr[j];
                            arr[j] := temp;
                        end;
                end;
        end;
end;

begin
    clrscr;

    arr[1] := 2;
    arr[2] := 0;
    arr[3] := 2;
    arr[4] := 1;
    arr[5] := 4;
    arr[6] := 3;
    arr[7] := 5;
    arr[8] := 7;
    arr[9] := 0;
    arr[10] := 0;
    arr[11] := 1;
    arr[12] := 0;

    writeln('SORTING BUBBLE ASCENDING');
    write('data awal: ');
    tampil(arr);

    bubblesort(arr);

    writeln();
    write('data akhir: ');
    tampil(arr);
end.