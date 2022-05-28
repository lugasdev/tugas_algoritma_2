Program gravitasi;
uses crt;

var
    step, i, j, maxnil, nilnow, nilnext:integer;
    l: array[1..6] of integer;

begin
    clrscr;
    l[1]:= 6;
    l[2]:= 2;
    l[3]:= 9;
    l[4]:= 3;
    l[5]:= 7;
    l[6]:= 4;

    maxnil := Length(l);

    write('data awal: [ ');
    for i := 1 to maxnil do
        write(l[i], ' ');
    writeln(']');

    for step := 1 to (maxnil - 1) do
    begin
        for j := 1 to (maxnil - step) do
        begin
            nilnow := l[j];
            nilnext := l[j + 1];

            if nilnext > nilnow then
                begin
                    l[j] := nilnext;
                    l[j+1] := nilnow;
                end;
        end;
    end;

    writeln('hasil sorting descending menggunakan gravitasi: ');

    write('[ ');
    for i := 1 to 6 do
        write(l[i], ' ');

    writeln(']');

end.