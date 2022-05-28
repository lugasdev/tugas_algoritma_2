Program selection;
uses crt;

var
    step, ix, substep, temp, jmlarr, min_index, max_nilai:integer;
    nilai: array[1..6] of integer;
begin
    clrscr;
    nilai[1]:= 25;
    nilai[2]:= 27;
    nilai[3]:= 10;
    nilai[4]:= 8;
    nilai[5]:= 76;
    nilai[6]:= 21;

    write('data awal: [ ');
    for step := 1 to 6 do
        write(nilai[step], ' ');
    writeln(']');

    jmlarr := Length(nilai);

    for step := 1 to (jmlarr - 1) do
    begin
        min_index := step;
        max_nilai := nilai[step];
        for substep := (step+1) to jmlarr do
        begin
            if nilai[substep] > max_nilai then
            begin
                min_index := substep;
                max_nilai := nilai[substep];
            end;
        end;
        temp := nilai[step];
        nilai[step] := max_nilai;
        nilai[min_index] := temp;
    end;

    writeln('hasil sorting descending menggunakan selection: ');
    write('[ ');
    for step := 1 to 6 do
        write(nilai[step], ' ');

    writeln(']');

end.