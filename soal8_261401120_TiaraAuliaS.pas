Program GajiKaryawan;
uses crt;

var
  golongan: char;
  jamKerja, jamLembur: integer;
  gajiPokok, lembur, bonus, totalGaji: longint;

begin
clrscr;
  writeln('PROGRAM GAJI KARYAWAN');

  write('Masukkan Golongan (A/B/C): ');
  readln(golongan);

  write('Masukkan total jam kerja per minggu: ');
  readln(jamKerja);

  // Menentukan gaji pokok 
  case upcase(golongan) of
    'A':
      gajiPokok := 1500000;

    'B':
      gajiPokok := 2000000;

    'C':
      gajiPokok := 2500000;

  else
    begin
      writeln('Golongan tidak valid.');
      readln;
      exit;
    end;
  end;

  // Menghitung lembur 
  if jamKerja > 40 then
  begin
    jamLembur := jamKerja - 40;
    lembur := jamLembur * 20000;
  end
  else
  begin
    jamLembur := 0;
    lembur := 0;
  end;

  // Menentukan bonus 
  bonus := 0;

  if (upcase(golongan) = 'C') and (jamKerja > 50) then
    bonus := 100000;

  totalGaji := gajiPokok + lembur + bonus;

  writeln;
  writeln('=== RINCIAN GAJI ===');
  writeln('Gaji Pokok : Rp', gajiPokok);
  writeln('Lembur     : Rp', lembur);
  writeln('Bonus      : Rp', bonus);
  writeln('Total Gaji : Rp', totalGaji);

  readln;
end.