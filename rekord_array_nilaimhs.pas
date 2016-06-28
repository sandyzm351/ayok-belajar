program rekord_array_nilaimhs;

{$mode objfpc}{$H+}

uses crt;
Label Atas;

const Nmaks=100;
type
    Mahasiswa = record
    Nim : string;
    Nama : string[40];
    NamaMK : string[40];
    UTS,UAS,NA : real;

end;

var Mhs:array[1..Nmaks] of Mahasiswa;
i, N : integer;


begin
Atas:
clrscr;
   writeln('-----------------------------------');
   writeln('   Program Data Nilai Mahasiswa    ');
   writeln('-----------------------------------');
   writeln();

write('Masukkan Jumlah Mahasiswa : ');
readln(N);
for i:= 1 to N do
begin
writeln();
writeln('Data ke-',i);
writeln();
write('Masukkan NIM : ');
readln(Mhs[i].nim);
write('Masukkan NAMA : ');
readln(Mhs[i].nama);
write('Masukkan Nama Mata Kuliah : ');
readln(Mhs[i].namamk);
write('Masukkan nilai UTS : ');
readln(Mhs[i].uts);
write('Masukkan nilai UAS : ');
readln(Mhs[i].uas);
Mhs[i].NA:=(Mhs[i].uts+Mhs[i].uas)/2;
writeln();


end;

 {Menampilkan Header Tabel Mahasiswa}
writeln('--------------------------------------------------------------');
writeln('|No. | NIM      |    NAMA    | MATA KULIAH | UTS | UAS | NA  |');
writeln('--------------------------------------------------------------');

{Menampilkan Isi Data Tabel Mahasiswa}
for i:= 1 to n do
begin
gotoxy(1,i+3); write('| ');
gotoxy(3,i+3); write (i);
gotoxy(6,i+3); write('| ');
gotoxy(8,i+3); write(Mhs[i].nim);
gotoxy(17,i+3); write('| ');
gotoxy(19,i+3); write(Mhs[i].nama);
gotoxy(30,i+3); write('| ');
gotoxy(32,i+3); write(Mhs[i].namamk);
gotoxy(44,i+3); write('| ');
gotoxy(46,i+3); write(  Mhs[i].uts:2:0);
gotoxy(49,i+3); write(' | ');
gotoxy(52,i+3); write(Mhs[i].uas:2:0);
gotoxy(55,i+3); write(' |   ');
gotoxy(58,i+3); write(Mhs[i].NA:0:2);
gotoxy(60,i+3); write('');

if i=N then
begin
gotoxy(62,i+3); writeln('| ');
end
else
begin
gotoxy(62,i+3); write('| ');
end;
end;

{Garis Penutup}
writeln('--------------------------------------------------------------');

writeln();

if tanya='y' then
begin
goto Atas;
end;
readln();

end.

