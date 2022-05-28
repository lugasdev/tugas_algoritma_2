Program kurs_uang;
uses crt;

function nilaidolar(rp,kurs : integer) : real;
    begin
        Nilaidolar:=rp/kurs;
    end;

var
    rupiah,kursdolar:integer;
    Dolar:real;

begin
    Clrscr;

    Write('masukan nilai rupiah=');readln(rupiah);

    Write('kurs 1 dolar=');readln(kursdolar);

    Dolar:=nilaidolar(rupiah,kursdolar);

    Write('Rp', rupiah, '=', dolar:3:2 ,'dolar');

end.