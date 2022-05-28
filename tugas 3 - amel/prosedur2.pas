program prosedur2;
uses crt;
var
   kurs, rp, dollar: real;

procedure konversiKurs();
begin
   write('Masukkan nilai rupiah: ');
   readln(rp);
   write('Kurs 1 dollar: ');
   readln(kurs);
   dollar := (rp/kurs);
   writeln('');
   Write('Rp ', rp:3:1, ' = ', dollar:3:2 ,' dolar');
end;

begin
   Clrscr;
   writeln('Konversi Kurs Rupiah ke Dollar');

   konversiKurs();
end.
