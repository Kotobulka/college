var
  str: string;
  i, l: integer;

begin
  writeln('Введите строку');
  readln(str);
  l := length(str);
  for i := 1 to l - 1 do
  begin
    if str[i] = str[l] then begin write(i, ' '); end;
  end;
  if pos(str[l], str) = l then writeln('Совпадений нет');
end.