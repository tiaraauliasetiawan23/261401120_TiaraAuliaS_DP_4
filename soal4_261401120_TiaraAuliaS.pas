Program KalkulatorSederhana;
uses crt;

var
  pilihan: integer;
  angka1, angka2, hasil: real;
  hasilDiv: integer;
  sisa: integer;
  ulang: char;

begin
clrscr;
  repeat
    writeln;
    writeln('=== KALKULATOR SEDERHANA ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    writeln('============================');

    write('Pilih operasi: ');
    readln(pilihan);

    write('Masukkan angka pertama: ');
    readln(angka1);

    write('Masukkan angka kedua: ');
    readln(angka2);

    case pilihan of
      1:
        begin
          hasil := angka1 + angka2;
          writeln('Hasil Penjumlahan = ', hasil:0:2);
        end;

      2:
        begin
          hasil := angka1 - angka2;
          writeln('Hasil Pengurangan = ', hasil:0:2);
        end;

      3:
        begin
          hasil := angka1 * angka2;
          writeln('Hasil Perkalian = ', hasil:0:2);
        end;

      4:
        begin
          if angka2 <> 0 then
          begin
            hasil := angka1 / angka2;
            writeln('Hasil Pembagian = ', hasil:0:2);
          end
          else
            writeln('Error: Tidak dapat membagi dengan nol.');
        end;

      5:
        begin
          hasilDiv := trunc(angka1) div trunc(angka2);
          sisa := trunc(angka1) mod trunc(angka2);

          writeln('Hasil DIV = ', hasilDiv);
          writeln('Hasil MOD = ', sisa);
        end;

    else
      writeln('Pilihan tidak tersedia.');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);

  until (ulang = 'T') or (ulang = 't');

  writeln('Program selesai.');
  readln;
end.