program TokoBuku;

var
    n, i: integer;
    harga, total, diskon, bayar: real;

begin
    write('Jumlah barang: ');
    readln(n);

    total := 0;

    for i := 1 to n do
    begin
        write('Harga barang ke-', i, ': ');
        readln(harga);
        total := total + harga;
    end;

    if total < 100000 then
        diskon := 0
    else if total < 500000 then
        diskon := total * 10 / 100
    else
        diskon := total * 20 / 100;

    bayar := total - diskon;

    writeln;
    writeln('Total sebelum diskon : Rp', total:0:0);
    writeln('Diskon               : Rp', diskon:0:0);
    writeln('Total bayar           : Rp', bayar:0:0);

    readln;
end.