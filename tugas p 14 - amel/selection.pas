Program selection;
uses crt, sysutils;

var
    step, ix, substep, temp, jmlarr, min_index, max_arr:integer;
    arr: array [1..12] of integer;

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

    writeln('SORTING SELECTION ASCENDING');
    write('data awal: ');
    for step := 1 to Length(arr) do
        write(arr[step], ' ');

    writeln('');
    writeln('');

    jmlarr := Length(arr);

    for step := 1 to (jmlarr - 1) do
    begin
        min_index := step;
        max_arr := arr[step];
        for substep := (step+1) to jmlarr do
        begin
            if arr[substep] < max_arr then
            begin
                min_index := substep;
                max_arr := arr[substep];
            end;
        end;
        temp := arr[step];
        arr[step] := max_arr;
        arr[min_index] := temp;

    end;

    write('data akhir: ');
    for step := 1 to Length(arr) do
        write(arr[step], ' ');

    writeln('');
end.