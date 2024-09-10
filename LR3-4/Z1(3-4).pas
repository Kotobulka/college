program Z1(LR3_4);

var
  i: integer;
  s: real;

begin
  begin
    writeln('Дюймы = Сантиметры');
  end;
  for i := 1 to 20 do
  begin
    s := 0;
    
    
    while s <= i do
    begin
      write(i, '     =    '); 
      begin
        s := 2.54 * i;
      end;
      writeln(s);
    end;
  end;
end.

