Program fungsi2;
uses crt;

function MenitKeJam(m:integer):real;
begin
    MenitKeJam := m/60;
end;

var
    menit:integer;
    jam: real;

begin
    Clrscr;

    writeln('konversi menit ke jam');
    write('masukkan menit : ');
    readln(menit);

    writeln('--==================--');
    jam := MenitKeJam(menit);
    writeln(menit, ' menit = ', jam:3:1, ' jam');
end.