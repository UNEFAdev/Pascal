{Desarrollado por Alexander Jose Rodriguez Duven | @AlexR1712 - UNEFA 2016 3D03IS }
program estudiantes_notas;
uses Crt;
const
	{Definir los valores que puede tomar para cantidad de estudiantes y cantidad de evaluaciones para que afecten el promedio y suma de notas}
	{#Usando constantes}
    CantidadEst:Integer=29; {Cambiar segun la cantidad de Estudiantes a evaluar}
    CantidadEval:Integer=10; {Cambiar segun la cantidad de evaluaciones}
var
	{Definicion de variables y sus tipos de datos.}
	CantFemenina,CantMasculino,i,j: Integer;
	Calificacion,Nota_Final,Promedio,Suma:Real;
	Sexo:String;
begin
	{Inicializacion de variables de tipo contador y acumulador}
	Suma:=0;
	CantMasculino:=0;
	CantFemenina:=0;

 for i := 1 to CantidadEst do
    begin
   	Nota_Final:=0;
  		for j := 1 to CantidadEval do
  			begin
  				TextColor(White);
  				writeln('Escriba la nota de la evaluacion ',j);
  				read(Calificacion);
  				Nota_Final:=Nota_Final + Calificacion;
  			end;
  		writeln('La nota final del estudiante es ', Nota_Final:9:0);
  	Suma:= Suma + Nota_Final;
  	writeln('');
  	TextColor(Cyan);
  	writeln('Es masculino o Femenino?, (Utilice "F" para las femeninas y "M" para los masculinos respectivamente)');
  	writeln('');

 	repeat 	
 	 	readln(Sexo);
 		Sexo:= UPCASE(Sexo);			
  	  	if (Sexo <> 'F') and (Sexo <> 'M') and (Sexo <> '')  then
  			begin
  				TextColor(Red);
  				writeln('Error, no esta introduciondo un valor valido, intente de nuevo.');
  			end;				

	until (Sexo = 'M') or (Sexo = 'F');

	if (Sexo = 'F') then	
		CantFemenina:=CantFemenina + 1
	else CantMasculino:= CantMasculino + 1;

 end;

 	writeln('');
 	TextColor(Yellow);
 	writeln('Espere un segundo, estamos procesando la informacion');
 	writeln('');

 Delay(1500); {Esperar un segundo y luego mostrar el resultado}

	{Calcular Promedio}
 Promedio:= Suma / CantidadEst;
 	TextColor(LightBlue);
 	writeln('El promedio de la seccion es ', Promedio:9:0);
 	writeln('');

 	{Calcular cual sexo predomina}
 	TextColor(White);
 	if CantFemenina > CantMasculino then 
 	writeln('Las femeninas predominan en la seccion con ', CantFemenina, ' personas')
 	else if CantMasculino > CantFemenina then
 	writeln('Los masculinos predominan en la seccion con ', CantMasculino, ' personas')
 	else writeln('La cantidad de personas tanto masculinos y femeninos, poseen igual cantidad');

 	repeat
  	until KeyPressed;

end.
										