var
  i_ptr:^integer;
  i:integer;
  begin
    i := 2; // Инициализация i значением 2
    i_ptr := @i; // Присваивание i_ptr адресу переменной i
    writeln('Значение = ',i_ptr^);
  end.