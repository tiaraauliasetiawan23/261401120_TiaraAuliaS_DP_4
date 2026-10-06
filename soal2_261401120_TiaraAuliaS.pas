program verifikasi;

var
    password : string;
    percobaan: integer;

begin
percobaan := 0;

repeat
    percobaan := percobaan + 1;
    write ('Masukkan password: ');
    readln(password);

    if password = 'orangkeren23' then
    begin 
        writeln('Login berhasil, selamat datang!');
        break;
    
    end

    else
    begin
        if percobaan < 3 then
        writeln('Password salah, coba lagi.');
    end;

until percobaan = 3;

    if password <> 'orangkeren23' then
    begin
        writeln('Akses ditolak, akun terkunci.');
    end;

    readln;

end.