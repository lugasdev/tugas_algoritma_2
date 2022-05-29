Program gravitation;
uses crt;

var
    step, i, j, maxnil, nilnow, nilnext:integer;
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

    maxnil := Length(arr);

    writeln('SORTING GRAVITASI ASCENDING');
    write('data awal: ');
    for i := 1 to maxnil do
        write(arr[i], ' ');
    writeln('');

    for step := 1 to (maxnil - 1) do
    begin
        for j := 1 to (maxnil - step) do
        begin
            nilnow := arr[j];
            nilnext := arr[j + 1];

            if nilnext < nilnow then
                begin
                    arr[j] := nilnext;
                    arr[j+1] := nilnow;
                end;

        end;
    end;

    writeln('');
    write('data akhir: ');
    for i := 1 to maxnil do
        write(arr[i], ' ');
end.