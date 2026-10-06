program GanjilGenap;
uses crt;

var
  N, angka, pilihan: integer;

begin
clrscr;
  writeln('PROGRAM DERET ANGKA GANJIL DAN GENAP');

  write('Masukkan nilai N: ');
  readln(N);

  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilih kategori deret: ');
  readln(pilihan);

  angka := 1;

  writeln;
  write('Hasil deret: ');

  while angka <= N do
  begin
    // Melewati angka yang tidak sesuai kategori
    if (pilihan = 1) and (angka mod 2 = 0) then
    begin
      angka := angka + 1;
      continue;
    end;

    if (pilihan = 2) and (angka mod 2 <> 0) then
    begin
      angka := angka + 1;
      continue;
    end;

    // Melewati kelipatan 5 
    if angka mod 5 = 0 then
    begin
      angka := angka + 1;
      continue;
    end;

    write(angka, ' ');
    angka := angka + 1;
  end;

  writeln;
  readln;
end.