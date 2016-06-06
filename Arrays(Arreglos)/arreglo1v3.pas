program arreglo_odd_while_procedure;
uses crt;
	const
		max=10;
	type
		arreglo = array[1..max] of integer;
		entero=integer;
	var
		numero:arreglo;
		i,j:entero;
{Procedure para leer los 10 numeros o cuantos numeros se quiere segun la constante Max}
procedure leer(var numero:arreglo; i:entero);
begin
	clrscr;
	i:=0;
	while (i<>max) do
	begin
		i:= i+1;
		Writeln ('Por favor introduzca el numero de la posicion ',i,':');
		readln(numero[i]);
		clrscr;
	end;
end;

{Procedure de imprimir en pantalla }
procedure imprimir(var numero:arreglo; j:entero);
begin
for j:= 1 to max do
begin
{ Use la funcion odd para determinar si es par o impar, 
odd es booleano por lo que da como resultado true si el numero es impar o false si el numero es par.
en lugar de odd se puede usar mod, ejemplo ( if (j mod 2 <> 0), hace referencia a que si el residuo de la division es distito de 0 se cumple la condicion por lo que es impar)}
	if (odd(j)) then
		begin
			Writeln ('El numero almacenado en la posicion [',j,'] es:',numero[j]);
		end;
	
end;
readln;	
end;

(*Cuerpo Principal*)

begin
	leer(numero,i);
	imprimir(numero,j);
end.