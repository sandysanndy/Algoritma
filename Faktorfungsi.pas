program Menghitung_faktorial;
{I.S. : User memasukkan harga N}
{F.S. : Menampilkan faktorial dari N}

var {kamus global}
  N : Integer;

  Function Faktorial(N : Integer):real;

  var {kamus lokal}
      Fak : real;
      i   : integer;
  begin
     If ((N=0) or (N=1))
        then
           Faktorial := 1
        else
        begin
           Fak := 1;
           for i:= 1 to N do
              Fak := Fak*i;

           Faktorial := Fak;
        end;
  end;
{program utama}
begin
   write('Masukkan Harga N : ');readln(N);
   write(N,' ! = ', Faktorial(N):0:0);
   readln;
end.
