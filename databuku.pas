program Data_Buku;
{I.S : User memasukkan banyaknya data(N) dan array kode buku (1:N)}
{F.S : Menampilkan data buku (1:N)}

{kamus global}
Uses Crt;
const
   maks_buku = 5;
type
   Larik1 = array[1..maks_buku] of string;
   Larik2 = array[1..maks_buku] of integer;
var
   Kode_Buku, Nama_Buku : Larik1;
   Harga_Buku           : Larik2;
   N,i                  : integer;
Function NamaBuku(Kode:string):string;
begin
If ((kode='FIS01')or(kode='fis01'))
   then
      begin
      NamaBuku := 'Fisika'
      end
   else
      If ((kode='BIG02')or(kode='big01'))
         then
           begin
           NamaBuku := 'Biologi'
           end
         else
            If ((kode='SJH03')or(kode='sjh03'))
               then
                  begin
                  NamaBuku := 'Sejarah'
                  end
               else
                  If ((kode='KIM04')or(kode='kim04'))
                     then
                        begin
                        NamaBuku := 'Kimia'
                        end
                     else
                        If ((kode='AGM05')or(kode='agm05'))
                           then
                              begin
                              NamaBuku := 'Agama'
                              end;
end;
Function HargaBuku(Kode:String):Integer;
begin
If ((kode='FIS01')or(kode='fis01'))
   then
      begin
      HargaBuku := 70000
      end
   else
      If ((kode='BIG02')or(kode='big01'))
         then
           begin
           HargaBuku :=55000
           end
         else
            If ((kode='SJH03')or(kode='sjh03'))
               then
                  begin
                  HargaBuku := 40000
                  end
               else
                  If ((kode='KIM04')or(kode='kim04'))
                     then
                        begin
                        HargaBuku := 60000
                        end
                     else
                        If ((kode='AGM05')or(kode='agm05'))
                           then
                              begin
                              HargaBuku := 45000
                              end;

end;
procedure isi(var N:integer;var Kode_Buku,Nama_Buku:Larik1;var Harga_Buku:Larik2);
begin
   write('Banyaknya Data : ');readln(N);
   {validasi banyaknya data}
   while ((N<0) or (N>5)) do
   begin
      gotoxy(1,2);
      write('Banyaknya data tidak boleh lebih dari 5! Ulangi');
      gotoxy(1,3);
      write('Tekan enter untuk melanjutkan!');
      readln;gotoxy(1,2);clreol;gotoxy(1,3);clreol;
      gotoxy(18,1);clreol;readln(N);
   end;
   {membuat tabel data buku}
   clrscr;
   gotoxy(35,1);
   write('Data Buku');
   gotoxy(20,2);
   write('----------------------------------------');
   gotoxy(20,3);
   write('| Kode Buku | Nama Buku | Harga Satuan |');
   gotoxy(20,4);
   write('----------------------------------------');

   for i := 1 to N do
   begin
      gotoxy(20,i+4);
      write('|           |            | Rp          |');
      gotoxy(22,i+4);readln(Kode_Buku[i]);

      while ((Kode_Buku[i]<>'FIS01')and(Kode_Buku[i]<>'fis01') and (Kode_Buku[i]<>'BIG02') and (Kode_Buku[i]<>'big02') and
            (Kode_Buku[i]<>'SJH03') and (Kode_Buku[i]<>'sjh03') and (Kode_Buku[i]<>'KIM04') and (Kode_Buku[i]<>'kim04')
             and (Kode_Buku[i]<>'AGM05') and (Kode_Buku[i]<>'AGM05')) do
            begin
              gotoxy(20,i+5);textcolor(RED);
              write('Kode hanya ada di FIS01/BIG02/SJH03/KIM04/AGM05! Ulangi');
              gotoxy(20,i+6);textcolor(15);
              write('Tekan enter untuk melanjutkan!');
              readln;gotoxy(20,i+5);clreol;gotoxy(20,i+6);clreol;
              gotoxy(20,i+4);
              write('|           |            | Rp          |');
              gotoxy(22,i+4);readln(Kode_Buku[i]);
            end;
      {mengisi array nama buku dari fungsi nama buku}
      Nama_Buku[i] := NamaBuku(Kode_Buku[i]);
      {mengisi array harga buku dari fungsi harga buku}
      Harga_Buku[i] := HargaBuku(Kode_Buku[i]);
      {menampilkan array nama buku}
      gotoxy(34,i+4);write(Nama_Buku[i]);
      {menampilkan array harga buku}
      gotoxy(49,i+4);write(Harga_Buku[i]);
   end;
      gotoxy(20,i+5);
   write('----------------------------------------');
end;
{program utama}
begin
    Isi(N,Kode_Buku,Nama_Buku,Harga_Buku);
    readln;
end.
