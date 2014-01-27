program Menghitung_total_bayar;
{I.S. : User memasukkan kode barang, nama barang, harga satuan, jumlah yang dibeli}
{F.S. : Menampilkan harga total, diskon, total bayar}


Uses crt;

const
   Username = 'Sandy';
   Password = 'Sandy';

var
   KodeBrg, NamaBrg                : string;
   Harga, Jumlah, HargaTotal, Uang : integer;
   Diskon, TotalBayar, kembalian   : real;
   Nama, Pass                      : string;
begin
   window(30, 8, 50, 16);textbackground(red);textcolor(yellow);clrscr;
   {menampilkan form login}
   gotoxy(9, 2);Write('LOGIN');
   gotoxy(9, 3);Write('-----');
   gotoxy(3, 4);write('Username : ');readln(Nama);
   gotoxy(3, 5);write('Password : ');readln(Pass);
   {memeriksa username dan password}
   If ((Nama = Username) and (Pass = Password))
      Then
      Begin
         window(1,1,80,25);textbackground(black);textcolor(yellow);clrscr;

         {memasukkan data penjualan}
         window(3,3,39,23);textbackground(Green);textcolor(yellow);clrscr;
      gotoxy(6, 2);Write('Pengisian Data Penjualan');
      gotoxy(6, 3);Write('------------------------');
      gotoxy(6, 4);Write('Kode Barang    : ');readln(KodeBrg);
      {validasi kode barang}
      if((KodeBrg<>'PK01')and(KodeBrg<>'pk01')and (KodeBrg<>'TS02')and(KodeBrg<>'ts02'))
         then
         begin
            gotoxy(6, 7);textcolor(red+blink);write('Salah Kode Barang');
            Readln;exit;
         end {menutup validasi salah}
         else
         begin
            gotoxy(6, 5);Write('Jumlah Barang  : ');readln(Jumlah);
            if((kodebrg ='PK01')or(kodebrg='pk01'))
               then
               begin
                  NamaBrg := 'Pakaian';
                  Harga := 55000;
               end      {untuk menutup nama barang pertama}
               else
               begin
                  NamaBrg := 'Tas';
                  Harga := 70000;
               end; {untuk menutup nama barang}
      {menghitung harga total}
      HargaTotal := Harga*Jumlah;

      {menghitung diskon}
      Diskon := 0;
        If (Jumlah >= 5)
        Then
         Diskon := 0.125*HargaTotal;
         TotalBayar := HargaTotal - Diskon;

         {menampilkan data penjualan}
         window(42,3,78,23);textbackground(Blue);textcolor(yellow);clrscr;
         gotoxy(10, 2);writeln('Hasil Data Penjualan');
         gotoxy(9, 3);Writeln('----------------------');
         gotoxy(6, 4);Writeln('Kode Barang    : ', KodeBrg);
         gotoxy(6, 5);Writeln('Nama Barang    : ', NamaBrg);
         gotoxy(6, 6);Writeln('Harga Satuan   : ', Harga);
         gotoxy(6, 7);Writeln('Jumlah Barang  : ', Jumlah);
         gotoxy(6, 8);Writeln('Harga Total    : ', HargaTotal);
         gotoxy(6, 9);Writeln('Diskon         : ', Diskon:0:1);
         gotoxy(6, 10);Writeln('--------------------');
         gotoxy(6, 11);Write('Total Bayar    : Rp. ', TotalBayar:0:1);
         {memasukkan jumlah uang yang dibayar pembeli}
         gotoxy(6, 12);Writeln('--------------------');
         gotoxy(6, 13);Write('Jumlah Uang    : Rp. ');readln(Uang);
         {menghitung jumlah uang kembalian}
         kembalian := Uang - TotalBayar;
         gotoxy(6, 14);Writeln('--------------------');
         gotoxy(6, 15);Write('Uang Kembalian : Rp. ', kembalian:0:1);
         readln;exit;
         end; {menutup validasi benar}
      End;    {menutup LOGIN}
      Writeln('Salah LOGIN');
   readln;
end.
