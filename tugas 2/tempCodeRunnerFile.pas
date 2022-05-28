program Satu;
uses crt;
var
table: array[1..5, 1..5] of String;
x,y: integer;

begin
    clrscr;
    for x := 1 to 5 do
    begin
        for y := 1 to 5 do
        begin
            if (x mod 2 = 0) then
                table[x,y] := 'o'
            else
                table[x,y] := 'x'
        end;
    end;
    for x := 1 to 5 do
    begin
        for y := 1 to 5 do
        begin
            write(table[x,y]: 2);
        end;
        writeln('');
    end;
end.

