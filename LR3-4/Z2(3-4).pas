program Z2(LR3_4);

var
  i,s: integer;

begin
  begin
    writeln('Квадраты первых 100 числел');
  end;
    s := 1;
    i := 1;
    while i <= 100 do
      
    begin
      write(i,'*',i, '     =    '); 
      begin
        s:=(sqr(i));
          i:=i+1;
      end;
      writeln(s);
  end;
end.