program productos;
uses crt;
const
p=30;
type
entero=integer;
reales=real;
letra=string;
var
cliente,cant,codigo,cant_rosa,cant_azul:entero;
costo_total:reales;
opcion:letra;

procedure lectura(var cant_rosa,cant_azul,cliente:entero; var costo_total:reales);
begin
repeat
 repeat
writeln('ingrese la cantidad de detergente a coamparar');
readln(cant);
IF (cant<0) then
writeln('usuario la cantidad debe ser mayor que cero');
readln;
until (cant>0);

repeat
writeln('ingrese el codigo del producto');
readln(codigo);
if (codigo <> 01) and (codigo<> 02) then
begin
writeln('usuario el codigo debe ser 01 o 02');
readln;
end;
until (codigo=01) or (codigo=02);

if (codigo=01) then
cant_rosa:=cant_rosa +cant
else
cant_azul:=cant_azul+cant;


costo_total:=cant*p;
writeln('el total de la compra es :',costo_total:5:2);
readln;
cliente:=cliente+1;

writeln('desea atender orto cliente introduzca s para si y n para no');
readln;
repeat
writeln('introduzca opcion');
readln(opcion);
if (opcion<>'s') and (opcion<>'n') then
writeln('usuario la opcion debe ser s o n');
readln;
until (opcion='n') or (opcion = 's');
until (opcion ='n');
end;

procedure imprimir(var cliente,cant_rosa,cant_azul:entero);
begin;
writeln('la cantidad de clientes en total atendidos es :',cliente);
readln;
if (cant_rosa>cant_azul) then
begin
writeln('el de detergentes rosa tiene mayor venta');
readln;
end
else
 if (cant_azul>cant_rosa) then
begin
writeln('el detergente azultiene mayor venta ');
readln;
end
else
begin
writeln('la cantidad de detergente azul vendida es igual a la cantidad de detergentes rosa vendido');
readln;
end;
end;

(*cuerpo principal*)
begin
clrscr;
lectura(cant_rosa,cant_azul,cliente,costo_total);
imprimir(cliente,cant_rosa,cant_azul);
End.