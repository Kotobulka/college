var a:array [1..6,1..8] of integer;
b:array [1..6] of integer;
i,j:integer;
begin  

  for i := 1 to 6 do
  begin             
    for j := 1 to 8 do                 
    begin
      A[i, j] := random(10);
      write(A[i, j]:2);
          if abs(a[i][1])>4 then b[i]:=a[i][1] else b[i]:=0;
    end;
    writeln;
  end;

    writeln(b);
end.