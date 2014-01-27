program Menukarkan_dua_buah_angka_tanpa_variabel_bantu;
{I.S. : User memasukkan harga ke dalam variabel angka1 dan variabel angka2}
{F.S. : Menampilkan hasil pertukaran}

var
   angka1, angka2 : integer;

begin
   {memasukkan 2 buah angka}
   write('masukkan angka1 =');readln(angka1);
   write('masukkan angka2 =');readln(angka2);

   {proses tukar nilai}
   angka1 := angka1+angka2;
   angka2 := angka1-angka2;
   angka1 := angka1-angka2;

   {tampilan hasil pertukaran}
   writeln;
   writeln('Hasil Pertukaran');
   writeln('----------------');
   writeln('Angka ke-1 = ',angka1);
   writeln('Angka ke-2 = ',angka2);

   readln;
end.

