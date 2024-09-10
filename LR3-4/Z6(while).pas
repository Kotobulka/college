program Z5;

var
  i, f, m: integer;

begin
  read(f);
  m := f;
  i := 1;
  while i <= m do
  begin
    if f mod i = 0 then
    begin
      write(i, ' ');
      m := (f div i);
    end;
    i := i + 1;
  end;
  write(f);
end.