program arreglo_odd_while;
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
while (i<>max) do
begin
	i:=i+1;
	clrscr;
   repeat
   	begin
	gotoxy (5,2);
	textcolor(green);
	Writeln ('Por favor introduzca el dato numero ',i,':');
	readln(num[i]);
	clrscr;

	if (num[i]<0) then
		begin
			gotoxy(10,5);
			textcolor(red);
			writeln('El numero ingresado debe ser mayor a 0');
		end;
	end;	
until(num[i]>0);
end;
clrscr;

for j:= 1 to max do
begin
	// Use la funcion odd para determinar si es par o impar, odd es booleano por lo que da como resultado true si el numero es impar o false si el numero es par.
	if (odd(j)) then
		begin
		textcolor(green);
		Writeln ('El numero almacenado en la posicion ',j,' es:',num[j]);
		end;
end;

writeln;
textbackground(blue);
writeln ('presione <ENTER> para salir');
readln;
end.