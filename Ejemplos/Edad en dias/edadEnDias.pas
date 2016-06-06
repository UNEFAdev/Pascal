program EdadEnDias;
uses crt;
const
anos=365;
type
letra=string[15];
reales=real;
var
nombre : letra;
edad, anos_dias: reales;

procedure leer (var nombre:letra; var edad:reales);
begin
textcolor(green);
writeln('Introduzca su nombre para registrarlo en el sistema');
readln(nombre);
repeat
writeln ('Ahora intruduzca su edad en a#os');
readln(edad);
clrscr;
if (edad<=0) or (edad>120) then
begin
textcolor(red);
writeln ('debe introducir una edad entre 1 y 120 a#os');
end
until (edad>=1) and (edad<120)
end;

procedure operar(edad:reales);
begin
anos_dias:=(edad*anos)
end;


procedure imprimir (nombre:letra; edad, anos_dias:reales);
begin
textcolor(yellow);
writeln('Sr./a ',nombre,' usted tiene ',edad:3:0,' a#os que equivalen a ',anos_dias:4:2,' dias');
writeln('Gracias por usar nuestro sistema, Adios!')
end;

//cuerpo principal 
begin
leer (nombre, edad);
operar (edad);
imprimir (nombre, edad, anos_dias);
	end.