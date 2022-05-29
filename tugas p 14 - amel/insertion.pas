Program insertion;
uses crt;

var
    i, ix, j, ketemu, n, x:integer;
    arr: array[1..12] of integer;

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

    writeln('SORTING INSERTION ASCENDING');
    write('data awal: ');
    for i := 1 to Length(arr) do
        write(arr[i], ' ');
    writeln('');

    n := Length(arr);

    for i := 2 to n do
    begin
        x := arr[i];
        j := i - 1;
        ketemu := 0;

        while (j >= 1) and (ketemu = 0) do
        begin
            if x < arr[j] then
            begin
                arr[j+1] := arr[j];
                j := j-1;
            end
            else
                ketemu := 1;
        end;
        arr[j+1] := x;
    end;

    write('data akhir: ');
    for i := 1 to Length(arr) do
        write(arr[i], ' ');

end.