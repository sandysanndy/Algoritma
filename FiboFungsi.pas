program Menentukan_Suku_ke_N_Barisan_Fibonacci;
{I.S. : User memasukkan harga N}
{F.S : Menampilkan suku ke-N}

var
   N :integer;

   procedure Isi_N(var N:Integer);

   begin
      write('Masukkan Suku ke-N = ');readln(N);
   end;

   function suku(N : Integer):Integer;

   begin
      If((N=1) or (N=2))
         then
            Suku := 1
         else
            Suku := Suku(N-2) + Suku(N-1);
   end;

   procedure tampilsuku(N : Integer);

   begin
      write('Suku ke-',N, ' = ',Suku(N));
   end;

   {program utama}
begin
   Isi_N(N);
   tampilsuku(N);
   readln;
end.
