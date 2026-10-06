Program NilaiAkhirMatkul;
uses crt;

var
  nilaiTugas, nilaiUTS, nilaiUAS: real;
  kehadiran, nilaiAkhir: real;
  indeks: char;

begin
  clrscr;
  writeln('PENENTUAN NILAI AKHIR');

  write('Masukkan nilai tugas : ');
  readln(nilaiTugas);
  
  write('Masukkan nilaiUTS :');
  readln(nilaiUTS);

  write('Masukkan nilaiUAS :');
  readln(nilaiUAS);

  write('Masukkan kehadiran (%): ');
  readln(kehadiran);

  // Menghitung nilai akhir
  nilaiAkhir := (nilaiTugas * 0.30) +
                (nilaiUTS * 0.30) +
                (nilaiUAS *0.40) ;

  // Menentukan indeks huruf
  if nilaiakhir >= 85 then
    indeks  := 'A'
  else if nilaiAkhir >= 75 then
    indeks  := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else 
    indeks := 'E';

  writeln;
  writeln('HASIL');
  writeln('Nilai Akhir : ', nilaiAkhir:0:2);
  writeln('Indeks Huruf: ', indeks);

  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    writeln('Status      : LULUS')
  else 
    writeln('Status      : TIDAK LULUS');

  readln;

end.