
var 
  s, s_old, s_new: string;
  i, i_old, inn,n: byte;
    begin
      write('Исходная строка: ');
      readln(s);
      write('Что заменить? ');
      readln(s_old);
      i_old := length(s_old);
      write('На что поменять');
      readln(s_new);
      while pos(s_old,s) <> 0 do
        begin
      i:= pos(s_old,s);
      delete(s,i,i_old);
      insert(s_new,s,i);
      end;
      writeln(s, ' ');
    end.