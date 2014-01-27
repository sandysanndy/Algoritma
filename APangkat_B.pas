program A_pangkat_B;
{I.S. : User memasukkan nilai a dan b}
{F.S. : Menampilkan hasil perpangkatan}

uses crt;

var
   a, b : integer;

   procedure nilaimasukkan(var a, b :integer);

   begin
      clrscr;
      write('Masukkan nilai yang akan dipangkatkan = ');readln(a);
      write('Masukkan nilai pangkat                = ');readln(b);
      while (b<0) do
      begin
         gotoxy(1, 3);
         write('Pangkat tidak boleh negatif, ulangi!');
         readln;gotoxy(1, 3);clreol;
         gotoxy(41, 2); clreol;readln(b);
      end;
   end;
   function hasil(a, b : integer):integer;

   begin
         if (a=0)
            then
               hasil := 0
            else
               if((a<>0) and (b=0))
                  then
                     hasil := 1
                  else
                     if((a<>0) and (b=1))
                        then
                           hasil := a
                        else
                           hasil := a* hasil(a,b-1);
   end;

   procedure tampilhasil(a, b : integer);
   begin
      write( a,' pangkat ', b,' = ', hasil(a, b));
   end;

begin
   nilaimasukkan(a, b);
   tampilhasil(a, b);
   readln;
end.
