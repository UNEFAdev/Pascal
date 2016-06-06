program proyecto;
uses crt;
const
n=50;
jugadores=2;
equipos=4;
type
estruct=record
nombreAtleta1:string[50];
apellidoAtleta1:string[50];
cedulaAtleta1:string[50];
edadAtleta1:integer;
gol1:integer;
posicion1:integer;
parada1:integer;


nombreAtleta2:string[50];
apellidoAtleta2:string[50];
cedulaAtleta2:string[50];
edadAtleta2:integer;
gol2:integer;
tarjetasAmarillas2:integer;
tarjetasRojas2:integer;
posicion2:integer;
parada2:integer;

nombreAtleta3:string[50];
apellidoAtleta3:string[50];
cedulaAtleta3:string[50];
edadAtleta3:integer;
gol3:integer;
tarjetasAmarillas3:integer;
tarjetasRojas3:integer;
posicion3:integer;
parada3:integer;

nombreAtleta4:string[50];
apellidoAtleta4:string[50];
cedulaAtleta4:string[50];
edadAtleta4:integer;
gol4:integer;
tarjetasAmarillas4:integer;
tarjetasRojas4:integer;
posicion4:integer;
parada4:integer;

nombreEntrenador:string[50];
apellidoEntrenador:string[50];
cedulaEntrenador:string[50];
nombreEquipo:string[50];

paradaAtleta:integer;
tarjetasAmarillas:integer;
tarjetasRojas:integer;
puntos:integer;
G,P,E,J,GA,GR,DG:integer;
numero:integer;
end;
datos=array[1..n] of estruct;
var
cont,i,j,R1,R2,R3,R4,G1,G2,CAMPEON,opcion,F1,F2,F3,F4,acuGoles,acuAmarillas,acuRojas,acuFaltas:integer;
menor1,menor2,menor3,menor4,cont1,cont2,cont3,cont4:integer;
proPartido1,proPartido2,proPartido3,proFaltas1,proFaltas2,proFaltas3:real;
mayor1,mayor2,mayor3,mayor4,p_mayor1,p_mayor2,p_mayor3,p_mayor4:integer;
nombre,nombre1,nombre2,nombre3,nombre4,p_nombre1,p_nombre2,p_nombre3,p_nombre4:string[50];
m_nombre1,m_nombre2,m_nombre3,m_nombre4:string[50];
sd:datos;
aux:estruct;
begin
textcolor(15);
textbackground(3);

  repeat {*INICIO DEL MENU*}
    clrscr;
    writeln('WILLSANTY JIMENEZ                                  SECCION:5D05IS');
    writeln('                                BIENVENIDO                             ');
    writeLN;
    writeln('                                                               ');
    writeln;
    writeln(' 1=LEER LOS DATOS DE EQUIPOS, ATLETAS Y ENTRENADORES');
    writeln;
    writeln(' 2=LEER DATOS LOS PARTIDOS');
    writeln;
    writeln(' 3=DETERMINAR PROMEDIO POR PARTIDO DE GOLES Y FALTAS COMETIDAS');
    writeln;
    writeln(' 4=MAXIMO GOLEADOR,MEJOR PORTERO');
    writeln;
    writeln(' 5=DETERMINAR JUGADOR MAS JOVEN DEL TORNEO');
    writeln;
    writeln(' 6=MOSTRAR  GOLES, TARJETAS AMARILLAS Y ROJAS');
    writeln;
    writeln(' 7=MOSTRAR DATOS DEL EQUIPO');
    writeln;
    writeln(' 8=MOSTRAR TABLA DE POSISIONES');
    writeln;
    writeln(' 9=SALIR');
    writeln;
    write('TIPEE EL NUMERO DE LA OPCION:');



repeat
readln(opcion);
until opcion in[1,2,3,4,5,6,7,8,9];{* REPETIR MIENTRAS SEA IGUAL A CUALQUIER DE LOS 9 DIGITOS*}
case opcion of  {*DEPENDIENDO DE LA OPCION QUE ELIGIO HAGA HAGA UN SIGUIENTE CASO*}
1:begin{*CASO 1 LEER DATOS DE EQUIPOS,JUGADORES Y ENTRENADORES*}
     clrscr;

     writeln('NOMBRE DEL EQUIPO');
     readln(sd[1].nombreEquipo);
     writeln('NOMBRE ENTRENADOR');
     readln(sd[1].nombreEntrenador);
     writeln('APELLIDO ENTRENADOR');
     readln(sd[1].apellidoEntrenador);
     writeln('CEDULA ENTRENADOR');
     readln(sd[1].cedulaEntrenador);

     for i:=1 to jugadores do
     begin
		
        writeln('NOMBRE DEL JUGADOR DEL EQUIPO:',sd[1].nombreEquipo);
        readln(sd[i].nombreAtleta1);
        writeln('APELLIDO DEL JUGADOR DEL EQUIPO:',sd[1].nombreEquipo);
        readln(sd[i].apellidoatleta1);
        writeln('CEDULA DEL JUGADOR DEL EQUIPO:',sd[1].nombreEquipo);
        readln(sd[i].cedulaAtleta1);
        writeln('EDAD DEL JUGADOR DEL EQUIPO:',sd[1].nombreEquipo);
        readln(sd[i].edadAtleta1);
        writeln('POSICION 1=>DELANTERO 2=>MEDIO CENTRO 3=>PORTERO');
        readln(sd[i].posicion1);
		cont1:=cont1+1;
     end;
	
	
	 writeln('NOMBRE DEL EQUIPO');
     readln(sd[2].nombreEquipo);
     writeln('NOMBRE ENTRENADOR');
     readln(sd[2].nombreEntrenador);
     writeln('APELLIDO ENTRENADOR');
     readln(sd[2].apellidoEntrenador);
     writeln('CEDULA ENTRENADOR');
     readln(sd[2].cedulaEntrenador);
	
	
     for i:=1 to jugadores do
     begin
		
        writeln('NOMBRE DEL JUGADOR DEL EQUIPO:',sd[2].nombreEquipo);
        readln(sd[i].nombreAtleta2);
        writeln('APELLIDO DEL JUGADOR DEL EQUIPO:',sd[2].nombreEquipo);
        readln(sd[i].apellidoatleta2);
        writeln('CEDULA DEL JUGADOR DEL EQUIPO:',sd[2].nombreEquipo);
        readln(sd[i].cedulaAtleta2);
        writeln('EDAD DEL JUGADOR DEL EQUIPO:',sd[2].nombreEquipo);
        readln(sd[i].edadAtleta2);
		writeln('POSICION 1=>DELANTERO 2=>MEDIO CENTRO 3=>PORTERO');
        readln(sd[i].posicion2);
		cont2:=cont2+1;
     end;
	
	
	writeln('NOMBRE DEL EQUIPO');
     readln(sd[3].nombreEquipo);
     writeln('NOMBRE ENTRENADOR');
     readln(sd[3].nombreEntrenador);
     writeln('APELLIDO ENTRENADOR');
     readln(sd[3].apellidoEntrenador);
     writeln('CEDULA ENTRENADOR');
     readln(sd[3].cedulaEntrenador);
	
	
     for i:=1 to jugadores do
     begin

        writeln('NOMBRE DEL JUGADOR DEL EQUIPO:',sd[3].nombreEquipo);
        readln(sd[i].nombreAtleta3);
        writeln('APELLIDO DEL JUGADOR DEL EQUIPO:',sd[3].nombreEquipo);
        readln(sd[i].apellidoatleta3);
        writeln('CEDULA DEL JUGADOR DEL EQUIPO:',sd[3].nombreEquipo);
        readln(sd[i].cedulaAtleta3);
        writeln('EDAD DEL JUGADOR DEL EQUIPO:',sd[2].nombreEquipo);
        readln(sd[i].edadAtleta3);
        writeln('POSICION 1=>DELANTERO 2=>MEDIO CENTRO 3=>PORTERO');
        readln(sd[i].posicion3);
		cont3:=cont3+1;
     end;

	 writeln('NOMBRE DEL EQUIPO');
     readln(sd[4].nombreEquipo);
     writeln('NOMBRE ENTRENADOR');
     readln(sd[4].nombreEntrenador);
     writeln('APELLIDO ENTRENADOR');
     readln(sd[4].apellidoEntrenador);
     writeln('CEDULA ENTRENADOR');
     readln(sd[4].cedulaEntrenador);
	
	
     for i:=1 to jugadores do
     begin

        writeln('NOMBRE DEL JUGADOR DEL EQUIPO:',sd[4].nombreEquipo);
        readln(sd[i].nombreAtleta4);
        writeln('APELLIDO DEL JUGADOR DEL EQUIPO:',sd[4].nombreEquipo);
        readln(sd[i].apellidoatleta4);
        writeln('CEDULA DEL JUGADOR DEL EQUIPO:',sd[4].nombreEquipo);
        readln(sd[i].cedulaAtleta4);
        writeln('EDAD DEL JUGADOR DEL EQUIPO:',sd[4].nombreEquipo);
        readln(sd[i].edadAtleta4);
        writeln('POSICION 1=>DELANTERO 2=>MEDIO CENTRO 3=>PORTERO');
        readln(sd[i].posicion4);
		cont4:=cont4+1;
     end;
	
     readkey;
     end;

2:begin {*CASO 2 LEER DATOS DE PARTIDOS*}
     clrscr;
     i:=1;
     writeln('PARTIDO 1:',sd[1].nombreEquipo,  '    vs   '   ,sd[2].nombreEquipo);
     writeln('GOLES DEL EQUIPO:',sd[1].nombreEquipo);
     readln(R1);
	 acuGoles:=acuGoles+R1;
	writeln('FALTAS COMETIDAS POR EL EQUIPO:',sd[1].nombreEquipo);
	readln(F1);
	acuFaltas:=acuFaltas+F1;
	writeln('TARJETAS AMARILLAS DEL EQUIPO:',sd[1].nombreEquipo);
	readln(sd[1].tarjetasAmarillas);
	acuAmarillas:=acuAmarillas+sd[1].tarjetasAmarillas;
	writeln('TARJETAS ROJAS DEL EQUIPO:',sd[1].nombreEquipo);
	readln(sd[1].tarjetasRojas);
	acuRojas:=acuRojas+sd[1].tarjetasRojas;
	
	
     writeln('GOLES DEL EQUIPO:',sd[2].nombreEquipo);
     readln(R2);
	 acuGoles:=acuGoles+R2;
	writeln('FALTAS COMETIDAS POR EL EQUIPO:',sd[2].nombreEquipo);
	readln(F2);
	acuFaltas:=acuFaltas+F2;
	writeln('TARJETAS AMARILLAS DEL EQUIPO:',sd[2].nombreEquipo);
	readln(sd[2].tarjetasAmarillas);
	acuAmarillas:=acuAmarillas+sd[2].tarjetasAmarillas;
	writeln('TARJETAS ROJAS DEL EQUIPO:',sd[2].nombreEquipo);
	readln(sd[2].tarjetasRojas);
	acuRojas:=acuRojas+sd[2].tarjetasRojas;
	proPartido1:=(R1+R2)/2;
	proFaltas1:=(F1+F2)/2;
	
	sd[1].GA:=sd[1].GA+R1;
	sd[1].GR:=sd[1].GR+R2;
	sd[2].GA:=sd[2].GA+R1;
	sd[2].GR:=sd[2].GR+R2;

	if(R1>R2)then
     begin
     writeln('VENCEDOR:',sd[1].nombreEquipo);
     G1:=1;
	
	 for i:=1 to jugadores do
	 begin
	 if(sd[i].posicion1=3) then
	 begin
	 sd[i].parada1:=sd[i].parada1+R1;
	 end;
	 end;

	 sd[1].puntos:=sd[1].puntos+3;
	 sd[1].G:=sd[1].G+1;
	 sd[2].P:=sd[2].P+1;
	 sd[2].J:=sd[2].J+1;
	 sd[1].J:=sd[1].J+1;
     end
     else if(R1=R2) then
     begin
     writeln('EMPATE');

	 while(R1=R2) do
	 begin
     writeln('PARTIDO 1 DESEMPATE:',sd[1].nombreEquipo,  '    vs    '   ,sd[2].nombreEquipo);

     writeln('GOLES DEL EQUIPO:',sd[1].nombreEquipo);
     readln(R1);
	 acuGoles:=acuGoles+R1;
	writeln('FALTAS COMETIDAS POR EL EQUIPO:',sd[1].nombreEquipo);
	readln(F1);
	acuFaltas:=acuFaltas+F1;
	writeln('TARJETAS AMARILLAS DEL EQUIPO:',sd[1].nombreEquipo);
	readln(sd[1].tarjetasAmarillas);
	acuAmarillas:=acuAmarillas+sd[1].tarjetasAmarillas;
	writeln('TARJETAS ROJAS DEL EQUIPO:',sd[1].nombreEquipo);
	readln(sd[1].tarjetasRojas);
	acuRojas:=acuRojas+sd[1].tarjetasRojas;



     writeln('GOLES DEL EQUIPO:',sd[2].nombreEquipo);
     readln(R2);
	 acuGoles:=acuGoles+R2;
	  writeln('FALTAS COMETIDAS POR EL EQUIPO:',sd[2].nombreEquipo);
	readln(F2);
	acuFaltas:=acuFaltas+F2;
	writeln('TARJETAS AMARILLAS DEL EQUIPO:',sd[2].nombreEquipo);
	readln(sd[2].tarjetasAmarillas);
	acuAmarillas:=acuAmarillas+sd[2].tarjetasAmarillas;
	writeln('TARJETAS ROJAS DEL EQUIPO:',sd[2].nombreEquipo);
	readln(sd[2].tarjetasRojas);
	acuRojas:=acuRojas+sd[2].tarjetasRojas;
	proPartido1:=(R1+R2)/2;
	proFaltas1:=(F1+F2)/2;
	sd[1].puntos:=sd[1].puntos+1;
	sd[2].puntos:=sd[2].puntos+1;
	sd[1].E:=sd[1].E+1;
	sd[2].E:=sd[2].E+1;
	sd[2].J:=sd[2].J+1;
	sd[1].J:=sd[1].J+1;


	for i:=1 to jugadores do
	 begin
	 if(sd[i].posicion1=3) then
	 begin
	 sd[i].parada1:=sd[i].parada1+R1;
	 end;
	 end;

	 for i:=1 to jugadores do
	 begin
	 if(sd[i].posicion2=3) then
	 begin
	 sd[i].parada2:=sd[i].parada2+R2;
	 end;
	 end;


	end;
     end
     else
	begin
     writeln('VENCEDOR:',sd[2].nombreEquipo);
     G1:=2;


	 for i:=1 to jugadores do
	 begin
	 if(sd[i].posicion2=3) then
	 begin
	 sd[i].parada2:=sd[i].parada2+R1;
	 end;
	 end;

	 sd[2].puntos:=sd[2].puntos+3;
	 sd[2].G:=sd[2].G+1;
	 sd[1].P:=sd[1].P+1;
	 sd[2].J:=sd[2].J+1;
	 sd[1].J:=sd[1].J+1;
     end;




     while(R1<>0) do
	 begin
	 i:=1;
     writeln('GOLES ANOTADOS POR:',sd[i].nombreAtleta1);
     readln(cont);
     if(cont<=R1)then
     begin
     sd[i].gol1:=sd[i].gol1+cont;
     R1:=R1-cont;
     i:=i+1;
     end
     else
     begin
     writeln('GOLES SOBREPASAN A LOS DEL PARTIDO');
     end;
     end;


     while(R2<>0) do
	 begin
	 i:=1;
     writeln('GOLES ANOTADOS POR:',sd[i].nombreAtleta2);
     readln(cont);
     if(cont<=R2)then
     begin
     sd[i].gol2:=sd[i].gol2+cont;
     R2:=R2-cont;
     i:=i+1;
     end
     else
     begin
     writeln('GOLES SOBREPASAN A LOS DEL PARTIDO');
     end;
     end;{*fin del while*}

     writeln('PARTIDO 2:',sd[3].nombreEquipo,'    vs    ',sd[4].nombreEquipo);

     writeln('GOLES DEL EQUIPO:',sd[3].nombreEquipo);
     readln(R3);
	 acuGoles:=acuGoles+R3;
	writeln('FALTAS COMETIDAS POR EL EQUIPO:',sd[3].nombreEquipo);
	readln(F1);
	acuFaltas:=acuFaltas+F2;
	writeln('TARJETAS AMARILLAS DEL EQUIPO:',sd[3].nombreEquipo);
	readln(sd[3].tarjetasAmarillas);
	acuAmarillas:=acuAmarillas+sd[3].tarjetasAmarillas;
	writeln('TARJETAS ROJAS DEL EQUIPO:',sd[3].nombreEquipo);
	readln(sd[3].tarjetasRojas);
	acuRojas:=acuRojas+sd[3].tarjetasRojas;

     writeln('GOLES DEL EQUIPO:',sd[4].nombreEquipo);
     readln(R4);
	 acuGoles:=acuGoles+R4;
	writeln('FALTAS COMETIDAS POR EL EQUIPO:',sd[4].nombreEquipo);
	readln(F2);
	acuFaltas:=acuFaltas+F2;
	writeln('TARJETAS AMARILLAS DEL EQUIPO:',sd[4].nombreEquipo);
	readln(sd[4].tarjetasAmarillas);
	acuAmarillas:=acuAmarillas+sd[4].tarjetasAmarillas;
	writeln('TARJETAS ROJAS DEL EQUIPO:',sd[4].nombreEquipo);
	readln(sd[4].tarjetasRojas);
	acuRojas:=acuRojas+sd[4].tarjetasRojas;
	proPartido2:=(R3+R4)/2;
	proFaltas2:=(F1+F2)/2;

	sd[3].GA:=sd[3].GA+R3;
	sd[3].GR:=sd[3].GR+R4;
	sd[4].GA:=sd[4].GA+R3;
	sd[4].GR:=sd[4].GR+R4;
	
	
     if(R3>R4)then
     begin
     writeln('VENCEDOR:',sd[3].nombreEquipo);
     G2:=3;
	
	 for i:=1 to jugadores do
	 begin
	 if(sd[i].posicion3=3) then
	 begin
	 sd[i].parada3:=sd[i].parada3+R3;
	 end;
	 end;
	
	
	 sd[3].G:=sd[3].G+1;
	 sd[4].P:=sd[4].P+1;
	 sd[4].J:=sd[4].J+1;
	 sd[3].J:=sd[3].J+1;
	
	sd[3].puntos:=sd[3].puntos+3;

	end
     else if(R3=R4) then
     begin
     writeln('EMPATE');
	 while(R1=R2)do{*REPITASE MIENTRAS SEA IGUAL RESULTADO 1 AL RESULATADO 2*}
	 begin
     writeln('PARTIDO 2 DESEMPATE:',sd[3].nombreEquipo,'    vs    ',sd[4].nombreEquipo);
     writeln('GOLES DEL EQUIPO:',sd[3].nombreEquipo);
     readln(R3);
	 acuGoles:=acuGoles+R3;
	writeln('FALTAS COMETIDAS POR EL EQUIPO:',sd[3].nombreEquipo);
	readln(F1);
	acuFaltas:=acuFaltas+F1;
	writeln('TARJETAS AMARILLAS DEL EQUIPO:',sd[3].nombreEquipo);
	readln(sd[2].tarjetasAmarillas);
	acuAmarillas:=acuAmarillas+sd[3].tarjetasAmarillas;
	writeln('TARJETAS ROJAS DEL EQUIPO:',sd[3].nombreEquipo);
	readln(sd[3].tarjetasRojas);
	acuRojas:=acuRojas+sd[3].tarjetasRojas;

     writeln('GOLES DEL EQUIPO:',sd[4].nombreEquipo);
     readln(R4);
	 acuGoles:=acuGoles+R4;
	 writeln('FALTAS COMETIDAS POR EL EQUIPO:',sd[4].nombreEquipo);
	readln(F2);
	 acuFaltas:=acuFaltas+F2;
	writeln('TARJETAS AMARILLAS DEL EQUIPO:',sd[4].nombreEquipo);
	readln(sd[4].tarjetasAmarillas);
	acuAmarillas:=acuAmarillas+sd[4].tarjetasAmarillas;
	writeln('TARJETAS ROJAS DEL EQUIPO:',sd[4].nombreEquipo);
	readln(sd[4].tarjetasRojas);
	acuRojas:=acuRojas+sd[4].tarjetasRojas;
	proPartido2:=(R3+R4)/2;
	proFaltas2:=(F1+F2)/2;
	
	sd[3].puntos:=sd[3].puntos+1;
	sd[4].puntos:=sd[4].puntos+1;
	
	sd[3].E:=sd[3].E+1;
	sd[4].E:=sd[4].E+1;
	
	sd[3].J:=sd[3].J+1;
	sd[4].J:=sd[4].J+1;
		
	
	 for i:=1 to jugadores do
	 begin
	 if(sd[i].posicion3=3) then
	 begin
	 sd[i].parada3:=sd[i].parada3+R3;
	 end;
	 end;
	
	 for i:=1 to jugadores do
	 begin
	 if(sd[i].posicion4=3) then
	 begin
	 sd[i].parada4:=sd[i].parada4+R4;
	 end;
	 end;
         end;
	end
     else
     begin
     writeln('VENCEDOR:',sd[4].nombreEquipo);
     G2:=4;
	
	 for i:=1 to jugadores do
	 begin
	 if(sd[i].posicion4=3) then
	 begin
	 sd[i].parada4:=sd[i].parada4+R4;
	 end;
	 end;
	
	 sd[4].G:=sd[4].G+1;
	 sd[3].P:=sd[3].P+1;
	 sd[4].puntos:=sd[4].puntos+3;
	 sd[3].J:=sd[3].J+1;
	 sd[4].J:=sd[4].J+1;
     end;

     while(R3<>0)do
	 begin
	 i:=1;
     writeln('GOLES ANOTADOS POR:',sd[i].nombreAtleta3);
     readln(cont);
     if(cont<=R3)then
     begin
     sd[i].gol3:=sd[i].gol3+cont;
     R3:=R3-cont;
     i:=i+1;
     end
     else
     begin
     writeln('GOLES SOBREPASAN A LOS DEL PARTIDO');
     end;
     end;

     while(R4<>0)do{*REPITASE MIENTRAS SEA DIFERENTE DE 0*}
	 begin
	 i:=1;
     writeln('GOLES ANOTADOS POR:',sd[i].nombreAtleta4);
     readln(cont);
     if(cont<=R4)then
     begin
     sd[i].gol4:=sd[i].gol4+cont;
     R4:=R4-cont;
     i:=i+1;
     end
     else
     begin
     writeln('GOLES SOBREPASAN A LOS DEL PARTIDO');
     end;
     end;




	
	writeln('FINAL:',sd[G1].nombreEquipo,'    vs    ',sd[G2].nombreEquipo);
    writeln('GOLES DEL EQUIPO:',sd[G1].nombreEquipo);
    readln(R1);
	acuGoles:=acuGoles+R1;
	writeln('FALTAS COMETIDAS POR EL EQUIPO:',sd[G1].nombreEquipo);
	readln(F1);
	acuFaltas:=acuFaltas+F1;
	writeln('TARJETAS AMARILLAS DEL EQUIPO:',sd[G1].nombreEquipo);
	readln(sd[G1].tarjetasAmarillas);
	acuAmarillas:=acuAmarillas+sd[G1].tarjetasAmarillas;
	writeln('TARJETAS ROJAS DEL EQUIPO:',sd[G1].nombreEquipo);
	readln(sd[G1].tarjetasRojas);
	acuRojas:=acuRojas+sd[G1].tarjetasRojas;
	
    writeln('GOLES DEL EQUIPO:',sd[G2].nombreEquipo);
    readln(R2);
	acuGoles:=acuGoles+R2;
	writeln('FALTAS COMETIDAS POR EL EQUIPO:',sd[G2].nombreEquipo);
	readln(F2);
	acuFaltas:=acuFaltas+F2;
	writeln('TARJETAS AMARILLAS DEL EQUIPO:',sd[G2].nombreEquipo);
	readln(sd[G2].tarjetasAmarillas);
	acuAmarillas:=acuAmarillas+sd[G2].tarjetasAmarillas;
	writeln('TARJETAS ROJAS DEL EQUIPO:',sd[G2].nombreEquipo);
	readln(sd[G2].tarjetasRojas);
	acuRojas:=acuRojas+sd[G2].tarjetasRojas;
	proPartido3:=(R1+R2)/2;
	proFaltas3:=(F1+F2)/2;
	
	sd[1].GA:=sd[1].GA+R1;
	sd[1].GR:=sd[1].GR+R2;
	sd[2].GA:=sd[2].GA+R1;
	sd[2].GR:=sd[2].GR+R2;

     if(R1>R2)then
     begin

	for i:=1 to jugadores do
	begin
	if((sd[i].posicion1=3) and (G1=1) ) then
	begin
	sd[i].parada1:=sd[i].parada1+R1;
	end
	else
	begin
	sd[i].parada2:=sd[i].parada2+R1;
	end;
	end;

	sd[G1].GA:=sd[G1].GA+R1;
	sd[G1].GR:=sd[G1].GR+R2;

     writeln('VENCEDOR:',sd[G1].nombreEquipo);
	 sd[G1].puntos:=sd[G1].puntos+3;
	 sd[G1].G:=sd[G1].G+1;
	 sd[G2].P:=sd[G2].P+1;
	 sd[G1].J:=sd[G1].J+1;
	 sd[G2].J:=sd[G2].J+1;
     end
     else if(R1=R2) then
     begin
     writeln('EMPATE');
	 while(R1=R2)do
	 begin
	 writeln('FINAL DESEMPATE:',sd[G1].nombreEquipo,'    vs    ',sd[G2].nombreEquipo);
     writeln('GOLES DEL EQUIPO:',sd[G1].nombreEquipo);
     readln(R1);
	 acuGoles:=acuGoles+R1;
	 writeln('FALTAS COMETIDAS POR EL EQUIPO:',sd[G1].nombreEquipo);
	readln(F1);
	acuFaltas:=acuFaltas+F1;
	writeln('TARJETAS AMARILLAS DEL EQUIPO:',sd[G1].nombreEquipo);
	readln(sd[G1].tarjetasAmarillas);
	acuAmarillas:=acuAmarillas+sd[G1].tarjetasAmarillas;
	writeln('TARJETAS ROJAS DEL EQUIPO:',sd[G1].nombreEquipo);
	readln(sd[G1].tarjetasRojas);
	acuRojas:=acuRojas+sd[G1].tarjetasRojas;

     writeln('GOLES DEL EQUIPO:',sd[G2].nombreEquipo);
     readln(R2);
	 acuGoles:=acuGoles+R2;
	 writeln('FALTAS COMETIDAS POR EL EQUIPO:',sd[G2].nombreEquipo);
	readln(F2);
	acuFaltas:=acuFaltas+F2;
	writeln('TARJETAS AMARILLAS DEL EQUIPO:',sd[G2].nombreEquipo);
	readln(sd[G2].tarjetasAmarillas);
	acuAmarillas:=acuAmarillas+sd[G2].tarjetasAmarillas;
	writeln('TARJETAS ROJAS DEL EQUIPO:',sd[G2].nombreEquipo);
	readln(sd[G2].tarjetasRojas);
	acuRojas:=acuRojas+sd[G2].tarjetasRojas;
	proPartido3:=(R1+R2)/2;
	proFaltas3:=(F1+F2)/2;
	sd[G1].puntos:=sd[G1].puntos+1;
	sd[G2].puntos:=sd[G2].puntos+1;
	
	sd[G1].E:=sd[G1].E+1;
	sd[G2].E:=sd[G2].E+1;
	
	sd[G1].J:=sd[G1].J+1;
	sd[G2].J:=sd[G2].J+1;
	

	sd[G1].GA:=sd[G1].GA+R1;
	sd[G1].GR:=sd[G1].GR+R2;
	sd[G2].GA:=sd[G2].GA+R1;
	sd[G2].GR:=sd[G2].GR+R2;
	end;
	
	
	for i:=1 to jugadores do
	 begin
	 if((sd[i].posicion1=3) and (G1=1) ) then
	 begin
	 sd[i].parada1:=sd[i].parada1+R1;
	 end
	 else
	 begin
	 sd[i].parada2:=sd[i].parada2+R1;
	 end;
	 end;

	for i:=1 to jugadores do
	 begin
	 if((sd[i].posicion3=3) and (G2=3) ) then
	 begin
	 sd[i].parada3:=sd[i].parada3+R2;
	 end
	 else
	 begin
	 sd[i].parada4:=sd[i].parada4+R2;
	 end;
	 end;

	
     end
     else
     begin
     writeln('VENCEDOR:',sd[G2].nombreEquipo);
	
	  for i:=1 to jugadores do
	 begin
	 if((sd[i].posicion3=3) and (G2=3) ) then
	 begin
	 sd[i].parada3:=sd[i].parada3+R2;
	 end
	 else
	 begin
	 sd[i].parada4:=sd[i].parada4+R2;
	 end;
	 end;

	sd[G2].GA:=sd[G2].GA+R1;
	sd[G2].GR:=sd[G2].GR+R2;

	 sd[G2].puntos:=sd[G2].puntos+3;
	 sd[G2].G:=sd[G2].G+1;
     sd[G1].P:=sd[G1].P+1;
	 sd[G1].J:=sd[G1].J+1;
	 sd[G2].J:=sd[G2].J+1;
	 end;

	for i:=1 to jugadores do
	begin
	if(G1=1)then
	begin
	 while(R1<>0)do
	 begin
     writeln('GOLES ANOTADOS POR:',sd[i].nombreAtleta1);
     readln(cont);
     if(cont<=R1)then
     begin
     sd[i].gol1:=sd[i].gol1+cont;
     R1:=R1-cont;
     end
     else
     begin
     writeln('GOLES SOBREPASAN A LOS DEL PARTIDO');
     end;
     end;
	 end
	 else

	 while(R1<>0)do
	 begin
     writeln('GOLES ANOTADOS POR:',sd[i].nombreAtleta2);
     readln(cont);
     if(cont<=R1)then
     begin
     sd[i].gol2:=sd[i].gol2+cont;
     R1:=R1-cont;
     end
     else
     begin
     writeln('GOLES SOBREPASAN A LOS DEL PARTIDO');
     end;
     end;
	end;




    for i:=1 to jugadores do
	begin
	if(G2=3)then
	begin
	 while(R2<>0)do
	 begin
     writeln('GOLES ANOTADOS POR:',sd[i].nombreAtleta3);
     readln(cont);
     if(cont<=R2)then
     begin
     sd[i].gol3:=sd[i].gol3+cont;
     R2:=R2-cont;
     end
     else
     begin
     writeln('GOLES SOBREPASAN A LOS DEL PARTIDO');
     end;
     end;
	 end
	 else

	 while(R2<>0)do
	 begin
     writeln('GOLES ANOTADOS POR:',sd[i].nombreAtleta4);
     readln(cont);
     if(cont<=R2)then
     begin
     sd[i].gol4:=sd[i].gol4+cont;
     R2:=R2-cont;
     end
     else
     begin
     writeln('GOLES SOBREPASAN A LOS DEL PARTIDO');
     end;
     end;
	end;
     readkey;
     end;


3:begin {*CASO 3 MOSTRAR PROMEDIOS DE GOLES Y FALTAS*}
     clrscr;
	writeln('PROMEDIO DE GOLES DEL PRIMER PARTIDO:',TRUNC(proPartido1));
	writeln('');
	writeln('PROMEDIO DE FALTAS DEL PRIMER PARTIDO:',TRUNC(proFaltas1));
	writeln('');
	writeln('PROMEDIO DE GOLES DEL SEGUNTO PARTIDO:',TRUNC(proPartido2));
	writeln('');
	writeln('PROMEDIO DE FALTAS DEL SEGUNDO PARTIDO:',TRUNC(proFaltas2));
	writeln('');
	writeln('PROMEDIO DE GOLES DEL TERCER PARTIDO:',TRUNC(proPartido3));
	writeln('');
	writeln('PROMEDIO DE FALTAS DEL TERCER PARTIDO:',TRUNC(proFaltas3));
     readkey;
    end;


4:begin {*CASO 4 MEJOR GOLEADOR Y MEJOR PORTERO*}
     clrscr;

	for i:=1 to jugadores do
	begin
	for j:=1 to jugadores-1 do
	begin
	if(sd[j].gol1<sd[j+1].gol1) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;
	mayor1:=sd[1].gol1;
	nombre1:=sd[1].nombreAtleta1;

	for i:=1 to jugadores do
	begin
	for j:=1 to jugadores-1 do
	begin
	if(sd[j].gol2<sd[j+1].gol2) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;

	mayor2:=sd[1].gol2;
	nombre2:=sd[1].nombreAtleta2;


	for i:=1 to jugadores do
	begin
	for j:=1 to jugadores-1 do
	begin
	if(sd[j].gol3<sd[j+1].gol3) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;

	mayor3:=sd[1].gol3;
	nombre3:=sd[1].nombreAtleta3;

	for i:=1 to jugadores do
	begin
	for j:=1 to jugadores-1 do
	begin
	if(sd[j].gol4<sd[j+1].gol4) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;
	
	mayor4:=sd[1].gol4;
	nombre4:=sd[1].nombreAtleta4;

	if((mayor1>mayor2)and(mayor1>mayor3)and(mayor1>mayor4))then
	begin
	writeln('MAXIMO GOLEADOR');
	writeln('NOMBRE:',nombre1,'    GOLES:',mayor1);
	end
	else if ((mayor2>mayor1)and(mayor2>mayor3)and(mayor2>mayor4))then
	begin
	writeln('MAXIMO GOLEADOR');
	writeln('NOMBRE:',nombre2,'    GOLES:',mayor2);
	end
	else if ((mayor3>mayor1)and(mayor3>mayor2)and(mayor3>mayor4))then
	begin
	writeln('MAXIMO GOLEADOR');
	writeln('NOMBRE:',nombre3,'    GOLES:',mayor3);
	end
	else
	begin
	writeln('MAXIMO GOLEADOR');
	writeln('NOMBRE:',nombre4,'    GOLES:',mayor4);
	end;



	for i:=1 to jugadores do
	begin
	for j:=1 to jugadores-1 do
	begin
	if(sd[j].parada1<sd[j+1].parada1) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;

	p_nombre1:=sd[1].nombreAtleta1;
	p_mayor1:=sd[1].parada1;

	for i:=1 to jugadores do
	begin
	for j:=1 to jugadores-1 do
	begin
	if(sd[j].parada2<sd[j+1].parada2) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;

	p_nombre2:=sd[1].nombreAtleta2;
	p_mayor2:=sd[1].parada2;

	for i:=1 to jugadores do
	begin
	for j:=1 to jugadores-1 do
	begin
	if(sd[j].parada3<sd[j+1].parada3) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;

	p_nombre3:=sd[1].nombreAtleta3;
	p_mayor3:=sd[1].parada3;

	for i:=1 to jugadores do
	begin
	for j:=1 to jugadores-1 do
	begin
	if(sd[j].parada4<sd[j+1].parada4) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;
	
	p_nombre4:=sd[1].nombreAtleta4;
	p_mayor4:=sd[1].parada4;
	
	if((p_mayor1>p_mayor2)and(p_mayor1>p_mayor3)and(p_mayor1>p_mayor4))then
	begin
	writeln('MEJOR PORTERO');
	writeln('NOMBRE:',p_nombre1,'    ATAJADAS:',p_mayor1);
	end
	else if ((p_mayor2>p_mayor1)and(p_mayor2>p_mayor3)and(p_mayor2>p_mayor4))then
	begin
	writeln('MEJOR PORTERO');
	writeln('NOMBRE:',p_nombre2,'    ATAJADAS:',p_mayor2);
	end
	else if ((p_mayor3>p_mayor1)and(p_mayor3>p_mayor2)and(p_mayor3>p_mayor4))then
	begin
	writeln('MEJOR PORTERO');
	writeln('NOMBRE:',p_nombre3,'    ATAJADAS:',p_mayor3);
	end
	else
	begin
	writeln('MEJOR PORTERO');
	writeln('NOMBRE:',p_nombre4,'    ATAJADAS:',p_mayor4);
	end;

	
	
	
     readkey;
    end;


5:begin {*CASO 5 BUSCAR JUGADOR DE MENOR EDAD*}
     clrscr;
	
	for i:=1 to jugadores do
	begin
	for j:=1 to jugadores-1 do
	begin
	if(sd[j].edadAtleta1>sd[j+1].edadAtleta1) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;
	menor1:=sd[1].edadAtleta1;
	m_nombre1:=sd[1].nombreAtleta1;
	
	for i:=1 to jugadores do
	begin
	for j:=1 to jugadores-1 do
	begin
	if(sd[j].edadAtleta2>sd[j+1].edadAtleta2) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;
	menor2:=sd[1].edadAtleta2;
	m_nombre2:=sd[1].nombreAtleta2;
	
	for i:=1 to jugadores do
	begin
	for j:=1 to jugadores-1 do
	begin
	if(sd[j].edadAtleta3>sd[j+1].edadAtleta3) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;
	menor3:=sd[1].edadAtleta3;
	m_nombre3:=sd[1].nombreAtleta3;
	
	for i:=1 to jugadores do
	begin
	for j:=1 to jugadores-1 do
	begin
	if(sd[j].edadAtleta4>sd[j+1].edadAtleta4) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;
	menor4:=sd[1].edadAtleta4;
	m_nombre4:=sd[1].nombreAtleta4;
	
	if((menor1<menor2)and(menor1<menor3)and(menor1<menor4))then
	begin
	writeln('JUGADOR MAS JOVEN DEL TORNEO');
	writeln('NOMBRE:',m_nombre1,'    GOLES:',menor1);
	end
	else if ((menor2<menor1)and(menor2<menor3)and(menor2<menor4))then
	begin
	writeln('JUGADOR MAS JOVEN DEL TORNEO');
	writeln('NOMBRE:',m_nombre2,'    GOLES:',menor2);
	end
	else if ((menor3<menor1)and(menor3<menor2)and(menor3<menor4))then
	begin
	writeln('JUGADOR MAS JOVEN DEL TORNEO');
	writeln('NOMBRE:',m_nombre3,'    GOLES:',menor3);
	end
	else
	begin
	writeln('JUGADOR MAS JOVEN DEL TORNEO');
	writeln('NOMBRE:',m_nombre4,'    GOLES:',menor4);
	end;
	
	
	
	
	
     readkey;
     end;



6:begin { *CASO 6 MOSTRAR GOLES Y TARJETAS DEL TORNEO*}
     clrscr;
	writeln('TOTAL DE GOLES DEL TORNEO:',acuGoles);
	writeln('');
	writeln('TOTAL DE TARJETAS AMARIILAS:',acuAmarillas);
	writeln('');
	writeln('TOTAL DE TARJETAS ROJAS:',acuRojas);
     readkey;
    end;

7:begin {*CASO 7 MOSTRAR INFORMACION DEL EQUIPO*}
     clrscr;
	 
	 
	for i:=1 to equipos do
	begin
	for j:=1 to equipos-1 do
	begin
	if(sd[j].GA<sd[j+1].GA) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;
	 
	 sd[1].DG:=0;
	 sd[2].DG:=sd[1].GA-sd[2].GA;
	 sd[3].DG:=sd[1].GA-sd[3].GA;
	 sd[4].DG:=sd[1].GA-sd[4].GA;
	 for i:=1 to equipos do
	 begin
	writeln('NOMBRE EQUIPO:',sd[i].nombreEquipo,'  JUGADOS:' ,sd[i].J, '  GANADOS:' ,sd[i].G, '   EMPATADOS:' ,sd[i].E,'   PERDIDOS:' ,sd[i].P);
	writeln('GOLES A FAVOR:',sd[i].GA,' GOLES EN CONTRA:',sd[i].GR, ' DIFERENCIA DE GOLES:',sd[i].DG);
	writeln('');
	end;
     readkey;
    end;

8:begin {*CASO 8 MOSTRAR TABLA DE POSICIONES*}
     clrscr;
	for i:=1 to equipos do
	begin
	for j:=1 to equipos-1 do
	begin
	if(sd[j].puntos<sd[j+1].puntos) then
	begin
	aux:=sd[j];
	sd[j]:=sd[j+1];
	sd[j+1]:=aux;
	end;
	end;
	end;
	
	for i:=1 to equipos do
	 begin
	writeln('NOMBRE EQUIPO:',sd[i].nombreEquipo,'  JUGADOS:' ,sd[i].J, '  GANADOS:' ,sd[i].G, '  EMPATADOS:' ,sd[i].E,'  PERDIDOS:' ,sd[i].P,' PUNTOS:',sd[i].puntos);
	writeln('');
	end;


     readkey;
    end;
 end;
until opcion=9;
end.
