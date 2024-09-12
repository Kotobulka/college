 var
  y,x: real;
begin
  x:=-12;
  
  while x<=1 do begin
  if x < -10
    then
    y := ln(x)--x
  else
  if x < -1
    then                   
    y := cos(x)
  else
  if x >=-1
    then
    y := x*sqr(0.1*x)*-x-ln(x);
 
  writeln(x:1:1,' = ',y);
   x:=x+0.3;
     end;
end.