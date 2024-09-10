type 
  // объявление типа указатель на элемент списка
  ukazatel = ^elem_spiska;
  // объявление записи элемента списка
  elem_spiska = record
    znach: integer;
    next: ukazatel;
  end;

var 
  head, pp, newelem: ukazatel;
  min, max: ukazatel;
  i: integer;

begin
  // создание нового элемента списка и инициализация указателей
  New(Head);
  pp := Head;
  min := Head;
  max := Head;

  // заполнение списка случайными значениями
  for i := 1 to 16 do
  begin
    pp^.znach := random(1000) - 311;
    write(pp^.znach,' ');

    // поиск минимального и максимального значений в списке
    if pp^.znach < min^.znach then
      min := pp;
    if pp^.znach > max^.znach then
      max := pp;

    // добавление нового элемента в список
    if i < 16 then
    begin
      New(newelem);
      pp^.next := newelem;
      pp := newelem;
    end;
  end;

  // вывод минимального и максимального значений списка
  writeln;
  writeln(min^.znach,' ',max^.znach);
end.

