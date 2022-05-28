Program prosedur1;
uses crt;

var decimal,hsl_bagi:integer;
var biner:string;

procedure DesimalToBiner(decimal:integer);
begin
    write('konversi dari desimal (', decimal, ') ke biner adalah : ');
    biner := '';
    while decimal > 0 do
    begin
        hsl_bagi := decimal mod 2;

        if (hsl_bagi = 1) then
            biner := '1' + biner
        else
            biner := '0' + biner;

        decimal := Trunc(decimal/2);
    end;
    writeln(biner);
end;

begin
    Clrscr;

    writeln('konversi desimal ke biner');
    writeln('');

    write('masukkan nilai desimal: ');
    readln(decimal);

    writeln('');
    DesimalToBiner(decimal);
end.