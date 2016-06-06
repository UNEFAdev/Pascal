program arreglo1;
uses crt;
	const
		max=10;
	type
		tabla = array[1..max] of integer;
		entero=integer;
	var
		i,j:entero;
		num:tabla;

begin
	i:=0;
repeat
	begin
	i:=i+1;
	clrscr;
   repeat
   	begin
	gotoxy (3,2);
	textcolor(yellow);
	Writeln ('Por favor introduzca el dato numero ',i,':');
	readln(num[i]);
	if (num[i]<0) then
		begin
			textcolor(red);
			writeln('El numero ingresado debe ser mayor a 0');
		end;
	end;	
until(num[i]>0);
end;
Until (i=max);

clrscr;

for j:= 1 to max do
begin
	if (j mod 2 <> 0) then
		begin
		textcolor(green);
		Writeln ('El numero almacenado en la posicion ',j,' es:',num[j]);
		end;
end;

writeln;
textbackground(blue);
writeln ('presione <ENTER> para salir');
readln;
END.