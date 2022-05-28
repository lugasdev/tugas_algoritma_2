Program insertion;
uses crt;

var
    i, ix, j, ketemu, n, x:integer;
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

    n := Length(l);

    for i := 2 to n do
    begin
        x := l[i];
        j := i - 1;
        ketemu := 0;

        while (j >= 1) and (ketemu = 0) do
        begin
            if x > l[j] then
            begin
                l[j+1] := l[j];
                j := j-1;
            end
            else
                ketemu := 1;
        end;
        l[j+1] := x;
    end;

    writeln('hasil sorting descending menggunakan insertion: ');
    write('[ ');
    for i := 1 to 6 do
        write(l[i], ' ');
    writeln(']');
    writeln('');

end.