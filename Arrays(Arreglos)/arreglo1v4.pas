program arreglo_odd_while_procedure;
uses crt;
	const
		max=10;
	type
		arreglo = array[1..max] of integer;
		entero=integer;
	var
		numero1,numero2:arreglo;
		i,j,k:entero;
{Procedure para leer los 10 numeros o cuantos numeros se quiere segun la constante Max}
procedure leer(var numero1,numero2:arreglo; var k:entero; i:entero);
begin
	clrscr;
	i:=0;
	k:=0;
	while (i<>max) do
	begin
		i:= i+1;
		
		Writeln ('Por favor introduzca el numero de la posicion ',i,':');
		readln(numero1[i]);

		if (odd(i)) then
			begin
				k:=k+1;
				numero2[k]:= i;
			end;
		end;
		clrscr;
	end;


{Procedure de imprimir en pantalla }
procedure imprimir(var numero1,numero2:arreglo; var k: entero; j:entero);
begin
for j:= 1 to k do
begin
writeln('El numero almacenado en la posicion [',numero2[j],'] es:',numero1[numero2[j]]);
end;
readln;
end;

(*Cuerpo Principal*)

begin
	leer(numero1,numero2,k,i);
	imprimir(numero1,numero2,k,j);
end.
