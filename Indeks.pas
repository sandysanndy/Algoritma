program Menentukan_indeks_nilai;
{I.S : User memasukkan sebuah nilai}
{F.S : Menampilkan indeks nilai}

var
   Nilai : real;
   Indeks : char;

begin
   Write('Masukkan sebuah nilai : ');readln(Nilai);
   if((Nilai<0)or(Nilai>100))
      then
        Write('Nilai yang dimasukkan harus antara 0 - 100')
      else
      begin

      if ((Nilai>= 80) and(Nilai<=100))
         then
             Indeks := 'A'
             else
                 if((Nilai>= 70) and(Nilai<80))
                    then
                    Indeks :='B'
                    else
                        if((Nilai>= 60) and(Nilai<70))
                           then
                           Indeks := 'C'
                           else
                              if((Nilai>= 50) and(Nilai<60))
                                 then
                                 Indeks := 'D'
                                 else
                                 Indeks := 'E';
   Writeln('Indeks Nilai        : ', Indeks);
   end;
   Readln;exit;
end.
