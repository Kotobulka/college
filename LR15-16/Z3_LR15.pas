type 
  // Описание указателя на элемент списка
  ukaz = ^elem_spiska;

  // Описание структуры элемента списка
  elem_spiska = record
    znach: integer;
    next: ukaz;
  end;

var 
  head, pp, newelem: ukaz;
  v,i:integer;
begin
  New(head);  // Создание головы списка
  pp := head;  // Присваивание адреса головы списка
  writeln('Введите длину списка');
  readln(v);
  for i:=1 to v do  // Цикл заполнения списка случайными значениями
  begin
    pp^.znach := random(100)-21;  // Присваивание случайного значения элементу
    write(pp^.znach,' ');  // Вывод значения элемента
    if i <> v then  // Если не последний элемент
    begin
      New(newelem);  // Создание нового элемента
      pp^.next := newelem;  // Присваивание указателю текущего элемента адреса нового элемента
      pp := pp^.next;  // Переход к следующему элементу
    end;
  end;

  writeln;
  pp := head;
  i:=1;
  while pp <> nil do  // Цикл вывода значений четных элементов списка
  begin
    if i mod 2 = 0 then
      write(pp^.znach,' ');  // Вывод значения элемента
    i:=i+1;
    pp := pp^.next;  // Переход к следующему элементу
  end;
end.

