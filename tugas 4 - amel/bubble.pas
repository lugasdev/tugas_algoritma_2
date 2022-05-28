Program bubble;
uses crt;

var
    i, ix, j, temp, n:integer;
    l: array[1..6] of integer;
begin
    clrscr;
    l[1]:= 25;
    l[2]:= 27;
    l[3]:= 10;
    l[4]:= 8;
    l[5]:= 76;
    l[6]:= 21;

    write('data awal: [ ');
    for i := 1 to 6 do
        write(l[i], ' ');

    writeln(']');

    for i := (Length(l) - 1) downto 1 do
        begin
            for j := 1 to i do
            begin
                if l[j+1] > l[j] then
                begin
                    temp := l[j];
                    l[j] := l[j+1];
                    l[j+1] := temp;
                end;
            end;
        end;

    writeln('hasil sorting descending menggunakan bubble: ');

    write('[ ');
    for i := 1 to 6 do
        write(l[i], ' ');

    writeln(']');
end.