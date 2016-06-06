program ejerciciolabora;
uses crt;
type
letras=char;
entero=integer;
var letra:letras;
i:entero;
procedure operacion(var letra:letras);
begin
for i:=1 to 10 do
begin
textcolor(yellow);
writeln('ingrese la letra #  '  , i , ' por favor'); 
readln(letra);
textcolor(blue);
if (( letra ='A') or (letra='a')) then

writeln('la letra   '  , letra ,  ' existe y se encuentra  en la posicion  ',i)
else 
writeln('la letra  ',  letra ,'  se encuentra en la pisicion  ',i);
end;
end;
begin
clrscr;
operacion(letra);
end.