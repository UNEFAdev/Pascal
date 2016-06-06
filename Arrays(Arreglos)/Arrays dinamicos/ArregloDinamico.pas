program	array_dinamico; {Llenar el array con numeros hasta que el usuario interrumpa}
uses crt;
var 
	numero: array of integer;
	max,i,j: integer;
	opcion:string;

begin
	clrscr;
  textcolor(green);
  writeln('Almacenar cantidades indefinidas de numeros enteros en un array');
  textcolor(Yellow);
  writeln('Escriba N cuando quiera finalizar el proceso.');
  i:=0;
  repeat
   	begin 
   		SetLength(numero , i+1); 		
   		textcolor(lightblue);
  		writeln('Escriba el numero en la posicion [',i,']');
  		readln(numero[i]);
  		//writeln(numero[i]);
  		writeln('//////Desea Salir Presione N///////');
  		i:=i+1;
  		read(opcion);
  		opcion:= upcase(opcion);
  		clrscr
  	end;
  until (opcion='N');
  
  clrscr;
	max:= high(numero) - 1;
  for j := 0 to max do
  begin
  	textcolor(green);
  	writeln('Numero en la posicion [',j,'] = ',numero[j]);
  	if j=max then
  	begin
  		writeln('Proceso Finalizado');
  		readln;
  	end;
  end;
  
 
end.