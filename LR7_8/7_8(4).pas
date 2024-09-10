var
  i, n: integer;
  text: string;

begin
  writeln('Введите кол-во символов больше, которого выводятся первые и последние 3 символов');
  readln(n);
  writeln('Введите текст');
  readln(text);
  if length(text) >= n then
  begin
    for i := 1 to n do
      write(text[i]);
    write(' ');
    for i := length(text) - 2 to length(text) do
      write(text[i]);
  end
  else
    for i := 1 to length(text) do
      write(text[1]);
end.