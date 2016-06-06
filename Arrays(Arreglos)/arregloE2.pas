program arreglo2_num_suma;
uses crt;
	const
		max=10;
	type
		arreglo = array[1..max] of integer;
		entero=integer;
	var
		numero1,numero2:arreglo;
		a,i,j,k,maxresult:entero;

procedure leer(var numero1,numero2:arreglo; var i:entero);
begin
	clrscr;
	i:=0;
	while (i<>max) do
	begin
		i:= i+1;
		writeln('Por favor introduzca el numero de la posicion ',i,':');
		readln(numero1[i]);
		clrscr;
	end;
end;

procedure imprimir(var numero1,numero2:arreglo; a,i,j,k:entero);
begin
j:=1;
k:=2;
a:=0;
repeat
begin
	a:=a+1;
	numero2[a]:= numero1[j] + numero1[k];
	writeln('La suma de [',numero1[j],'+',numero1[k],'] es ', numero2[a]);
	j:=j+2;
	k:=k+2;
	//maxresult:= low(numero2);
	//writeln(maxresult);
end;
until (a=5);
readln;
end;

(*Cuerpo Principal*)
begin
	leer(numero1,numero2,i);
	imprimir(numero1,numero2,a,i,j,k);
end.
