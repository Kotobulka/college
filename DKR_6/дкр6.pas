program DequeMemoryType;

uses
  crt;

const
  MAX_SIZE = 3;

type
  Node = record
    data: Integer;
    next: ^Node;
  end;

var
  dynamicFront, dynamicRear: ^Node;
  staticDeque: array[1..MAX_SIZE] of Integer;
  staticFront, staticRear, staticSize: Integer;
  choice, number, memoryType: Integer;

procedure insertDynamicFront(key: Integer);
var
  newNode: ^Node;
begin
  New(newNode);
  newNode^.data := key;
  newNode^.next := dynamicFront;
  
  if dynamicFront = nil then
    dynamicRear := newNode;
  
  dynamicFront := newNode;
end;

procedure insertDynamicRear(key: Integer);
var
  newNode: ^Node;
begin
  New(newNode);
  newNode^.data := key;
  newNode^.next := nil;
  
  if dynamicFront = nil then
    dynamicFront := newNode
  else
    dynamicRear^.next := newNode;
  
  dynamicRear := newNode;
end;

procedure deleteDynamicFront;
var
  temp: ^Node;
begin
  if dynamicFront <> nil then
  begin
    temp := dynamicFront;
    dynamicFront := dynamicFront^.next;
    Dispose(temp);
  end;
end;

procedure deleteDynamicRear;
var
  current, temp: ^Node;
begin
  if dynamicFront <> nil then
  begin
    if dynamicFront = dynamicRear then
    begin
      Dispose(dynamicFront);
      dynamicFront := nil;
      dynamicRear := nil;
    end
    else
    begin
      current := dynamicFront;
      while current^.next <> dynamicRear do
        current := current^.next;
      
      temp := dynamicRear;
      dynamicRear := current;
      Dispose(temp);
      dynamicRear^.next := nil;
    end;
  end;
end;

procedure displayDynamic;
var
  current: ^Node;
begin
  clrscr;
  current := dynamicFront;
  
  writeln('Содержимое динамического дека: ');
  while current <> nil do
  begin
    write(current^.data, ' ');
    current := current^.next;
  end;
  writeln;
end;

procedure insertStaticFront(key: Integer);
begin
  if staticSize < MAX_SIZE then
  begin
    for var i := staticSize downto 1 do
      staticDeque[i + 1] := staticDeque[i];
      
    staticSize := staticSize + 1;
    staticDeque[1] := key;
  end
  else
    writeln('Статический дек полон, невозможно добавить элемент.');
end;

procedure insertStaticRear(key: Integer);
begin
  if staticSize < MAX_SIZE then
  begin
    staticSize := staticSize + 1;
    staticDeque[staticSize] := key;
  end
  else
    writeln('Статический дек полон, невозможно добавить элемент.');
end;

procedure deleteStaticFront;
begin
  if staticSize > 0 then
  begin
    for var i := 1 to staticSize - 1 do
      staticDeque[i] := staticDeque[i + 1];
      
    staticSize := staticSize - 1;
  end
  else
    writeln('Статический дек пуст, невозможно удалить элемент.');
end;

procedure deleteStaticRear;
begin
  if staticSize > 0 then
    staticSize := staticSize - 1
  else
    writeln('Статический дек пуст, невозможно удалить элемент.');
end;

procedure displayStatic;
begin
  clrscr;
  
  writeln('Содержимое статического дека: ');
  for var i := 1 to staticSize do
    write(staticDeque[i], ' ');
  writeln;
end;

begin
  clrscr;
  
  dynamicFront := nil;
  dynamicRear := nil;
  staticFront := 1;
  staticRear := 1;
  staticSize := 0;
  
  writeln('Выберите тип памяти:');
  writeln('1. Динамическая память');
  writeln('2. Статическая память');
  
  readln(memoryType);
  
  repeat
    clrscr;
    
    if memoryType = 1 then
    begin
      writeln('Выберите действие для динамического дека:');
      writeln('1. Добавить число в начало дека');
      writeln('2. Добавить число в конец дека');
      writeln('3. Удалить число с начала дека');
      writeln('4. Удалить число с конца дека');
      writeln('5. Показать содержимое дека');
    end
    else if memoryType = 2 then
    begin
      writeln('Выберите действие для статического дека:');
      writeln('1. Добавить число в начало дека');
      writeln('2. Добавить число в конец дека');
      writeln('3. Удалить число с начала дека');
      writeln('4. Удалить число с конца дека');
      writeln('5. Показать содержимое дека');
    end;
    
    writeln('0. Выход');
    
    readln(choice);
    clrscr;
    
    case choice of
      1: begin
           if memoryType = 1 then
           begin
             writeln('Введите число для добавления в начало дека: ');
             readln(number);
             insertDynamicFront(number);
           end
           else if memoryType = 2 then
           begin
             writeln('Введите число для добавления в начало дека: ');
             readln(number);
             insertStaticFront(number);
           end;
         end;
      2: begin
           if memoryType = 1 then
           begin
             writeln('Введите число для добавления в конец дека: ');
             readln(number);
             insertDynamicRear(number);
           end
           else if memoryType = 2 then
           begin
             writeln('Введите число для добавления в конец дека: ');
             readln(number);
             insertStaticRear(number);
           end;
         end;
      3: begin
           if memoryType = 1 then
             deleteDynamicFront
           else if memoryType = 2 then
             deleteStaticFront;
         end;
      4: begin
           if memoryType = 1 then
             deleteDynamicRear
           else if memoryType = 2 then
             deleteStaticRear;
         end;
      5: begin
           if memoryType = 1 then
             displayDynamic
           else if memoryType = 2 then
             displayStatic;
         end;
    end;
    
    if (choice >= 1) and (choice <= 5) then
    begin
      writeln;
      writeln('Нажмите любую клавишу для продолжения.');
      readkey;
    end;
  until choice = 0;
end.
