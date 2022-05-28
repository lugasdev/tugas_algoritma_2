Program fungsi1;
uses crt;

function HitungUmur(t:integer):integer;
begin
    HitungUmur := 2022-t;
end;

var
    tah, umur:integer;

begin
    Clrscr;

    writeln('cari umur kamu');
    write('masukkan tahun lahir : ');
    readln(tah);

    writeln('');
    umur := HitungUmur(tah);
    writeln('umur kamu adalah: ', umur, ' th');
end.