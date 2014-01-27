program Mengubah_sejumlah_detik;
{I.S. : User memasukkan harga ke dalam variabel dtk}
{F.S. : Menampilkan jam : menit : detik}

var
    dtk, jam, menit, detik : integer;

begin
    {memasukkan sejumlah detik}
    write('Masukkan Sejumlah Detik : ');
    readln(dtk);

    {mengubah menjadi jam : menit : detik}
    jam := dtk div 3600;
    menit := (dtk mod 3600) div 60;
    detik := (dtk mod 3600) mod 60;

    writeln(jam, ' Jam : ', menit,' Menit : ', detik, ' Detik');
    readln;
end.
