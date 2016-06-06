program suman;
uses
 crt;
type
 reales=real;
 enteros=integer;
var
i,n:enteros;
 numero,suma:reales;

procedure leer(var n:enteros);
begin
    repeat
      begin
        writeln('Escriba la cantidad a sumar');
        read(n);
        if (n<=0) then writeln('Error por favor introduzca un valor mayor a 0');
      end;
   until (n>0);

end;

procedure operacion(numero:reales; var suma:reales);
begin
  for i:= 1 to n do
    begin
     Writeln('Introduzca el numero en la posicion ', i);
     read(numero);
     suma:=suma + numero;
    end;
    writeln('el total de la suma es: ' , suma:6:2);
    readln;
    clrscr;
end;
(* Cuerpo Principal *)

begin
    leer(n);
    operacion(suma,numero);

end.
