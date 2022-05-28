Program fungsiprosedur;
uses crt;
var
    nama, nrp: string;
    nilai: integer;

procedure Identitas();
begin
    write('masukkan nama: '); readln(nama);
    write('masukkan nrp: '); readln(nrp);
end;

function StatusKelulusan(nilai:integer):string;
var stat: string;
begin
    if nilai >= 70 then
        stat := 'lulus'
    else
        stat := 'tidak lulus';

    StatusKelulusan := stat;
end;

begin
    Clrscr;
    Identitas();

    writeln('');

    write('masukkan nilai: '); readln(nilai);

    writeln('anda dinyatakan: ', StatusKelulusan(nilai));

end.