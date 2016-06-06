program Diezletrasv2;
uses crt;
type
	numero=Integer;
	caracteres=String;
var
	i,contar:numero;
	letras: caracteres;	
procedure principal(var letras:caracteres);
begin
	clrscr;
	contar:=0;
	writeln('Introduzca frases');
	readln(letras);
    letras:=upcase(letras);	
   for i := 1 to Length(letras) do
    begin
    	
    	if (letras[i] = 'A') then 
    	begin
    	    TextColor(Green);
    		writeln('La letra "A" se encuentra en la posicion ',i,' del texto introducido.');
            contar:=contar + 1;
    		writeln;
    	end
    	else
    	begin
    	    TextColor(White);
    	   // writeln('No existe  A al contrario esta ',letras[i],' en la posicion ',i);
    	    writeln;
    	end;
    	    	
   	end;
    if (contar > 0) then
    begin
    TextColor(Lightgray);
    writeln('Existen en el texto ',contar,' letra/s A');	
    end;
    writeln;
    TextColor(Yellow);
    writeln('Presione cualquier tecla para salir');
    readln;
    

    
end;

// Cuerpo Principal

begin
	principal(letras);
end.


{www.alexanderrodriguez.com.ve | Version de Repositorio Publico}


