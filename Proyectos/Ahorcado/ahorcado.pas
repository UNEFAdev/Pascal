program Ahorcado;
uses crt;
const
	max = 10;
  MaxIntentos = 8;
	(* Palabras segun nivel (1,2,3) en array de forma constante. *)
	(* Tres letras *)
	PalabrasN1: array[1..max] of string =(
     'Muy','Uno','Osa','Red',
     'Uso','Ver','Dos','Aji',
     'Alo','Era');
	(* Cinco letras *)
	PalabrasN2: array[1..max] of string =(
     'Andar','Anaco','Acero','Adobo',
     'Ajeno','Algun','Alzar','Elite',
     'Apagar','Apoyo');
	(* Siete letras *)
	PalabrasN3: array[1..max] of string =(
     'Cajeros','Cachito','Cajitas','Cajones',
     'Bailado','Bajista','Balones','Ganador',
     'Exitoso','Grafico');
  (*Pistas*)
  PistaN1: array[1..max] of string =(
     'Se utiliza para intensificar una cualidad',
     'Se refiere a una unidad',
     'Es un animal que le gusta la miel',
     'Se usa para pescar pero tambien es un termino informatico',
     'Acción de usar',
     'Es un sentido que usamos con los ojos',
     'Equivale a decir Uno sobre Dos por Cuatro',
     'Planta que en tambien se denomina Chile',
     'Ring Ring Ring...',
     'Una linea de tiempo o periodo'
     );

  (* Cinco letras *)
  PistaN2: array[1..max] of string =(
     'Ir de un lugar a otro dando pasos',
     'Ciudad del Estado Anzoategui Venezuela',
     'Mezcla de hierro con una cantidad de carbono determinado',
     'Condimento o salsa a base de diferentes chiles y otros elementos para realzar el sabor de la comida.',
     'Que pertenece o corresponde a otro',
     'Forma de "alguno" usado delante de nombres masculinos singulares',
     'Poner una cosa o a una persona en una posición alta o más alta de la que tenía.',
     'Grupo minoritario de personas que tienen un estatus superior al resto de las personas de la sociedad.',
     'Es lo contrario de Encender',
     'Cosa que sostiene algo o que sirve para sostener.'
     );
  (* Siete letras *)
  PistaN3: array[1..max] of string =(
     'Maquinas desde donde se saca dinero con tarjetas',
     'Es un pan, pero tiene cachos como un toro',
     'Generalmente son de Carton y se usa para almacenar cosas pequenas',
     'Son de madera por lo general y alli guardamos cosas.',
     'Participio pasado de Bailar',
     'Persona que toca el Bajo',
     'Se dice que si pasan a las arquerias es Gol que son?',
     'Lo inverso de Perdedor',
     'Cuando compila la primera vez te sientes?',
     'Se usa para representar datos en forma de imagenes'
     );

	

type 
	 letrasArray = array[1..max] of string;
	 entero = integer;
	 letra = string;
label 
IrMenu;

var
	palabraNivel: letrasArray;
	palabra,pista: letra;
  opcion:letra;
  Salir:Boolean;

{*** ####Procedures#### ****}
procedure Menu(var opcion:string);
begin
  clrscr;
  TextColor(Yellow);
  gotoxy(50,5);
  writeln('Juego Realizado por: Alexander Rodriguez, Erick Castillo, Ronald Paez, Luis Garcia');
  gotoxy(53,6);
  writeln('UNEFA SECCION 3D03IS || 12/05/2016 || v1.15 || Version de Desktop (1440x900)');
  gotoxy(50,15);
  writeln('             _    _    ____    _____     _____              _____     ____  ');
  gotoxy(50,16);
  writeln('     /\     | |  | |  / __ \  |  __ \   / ____|     /\     |  __ \   / __ \ ');
  gotoxy(50,17);
  writeln('    /  \    | |__| | | |  | | | |__) | | |         /  \    | |  | | | |  | |');
  gotoxy(50,18);
  writeln('   / /\ \   |  __  | | |  | | |  _  /  | |        / /\ \   | |  | | | |  | |');
  gotoxy(50,19);
  writeln('  / ____ \  | |  | | | |__| | | | \ \  | |____   / ____ \  | |__| | | |__| |');
  gotoxy(50,20);
  writeln(' /_/    \_\ |_|  |_|  \____/  |_|  \_\  \_____| /_/    \_\ |_____/   \____/ ');
///////////////////// Separador ///////////////////////////////////////////////////////
TextColor(Yellow);
gotoxy(30,40);
writeln('       __   __  __   ______   ___       ____ ');
gotoxy(30,41);
writeln('      / /  / / / /  / ____/  /   |     / __ \');
gotoxy(30,42);
writeln(' __  / /  / / / /  / / __   / /| |    / /_/ /');
gotoxy(30,43);
writeln('/ /_/ /  / /_/ /  / /_/ /  / ___ |   / _, _/ ');
gotoxy(30,44);
writeln('\____/   \____/   \____/  /_/  |_|  /_/ |_|  ');
gotoxy(30,45);
Writeln(': : : : : : : : Presiona 1: : : : : : : : : :');
////////////////////////// Separador ////////////////////////////////////////////////////
TextColor(Yellow);
gotoxy(100,40);
writeln('   _____    ___       __       ____   ____ ');
gotoxy(100,41);
writeln('  / ___/   /   |     / /      /  _/  / __ \');
gotoxy(100,42);
writeln('  \__ \   / /| |    / /       / /   / /_/ /');
gotoxy(100,43);
writeln(' ___/ /  / ___ |   / /___   _/ /   / _, _/ ');
gotoxy(100,44);
writeln('/____/  /_/  |_|  /_____/  /___/  /_/ |_|  ');
gotoxy(100,45);
writeln(': :: : :: : :: : Presiona 0 : :: : :: : :: :');

  repeat
    begin
      readln(opcion);
      case opcion of
        '1': begin
              writeln('Opcion 1 seleccionado');
             end;
        '0': begin
              Salir:= true;
             end;
        else 
          TextColor(Red);
          gotoxy(60,25);
          Writeln('No ha elegido una opcion correcta, por favor intente de nuevo.');
      end;

    end;
  until ((opcion = '1') or (opcion = '0'));
end;


procedure Nivel(var palabra,pista:letra; opcion:string);
	var nivel: string; numeroPalabra: integer;

begin
  clrscr;
TextColor(Yellow);
gotoxy(60,5);
writeln('              SELECCIONE EL NIVEL DE LA PARTIDA');
gotoxy(56,6);
writeln('');
gotoxy(56,7);
writeln(' .----------------.        .----------------.         .----------------. ');
gotoxy(56,8);
writeln('| .--------------. |      | .--------------. |       | .--------------. |');
gotoxy(56,9);
writeln('| |     __       | |      | |    _____     | |       | |    ______    | |');
gotoxy(56,10);
writeln('| |    /  |      | |      | |   / ___ `.   | |       | |   / ____ `.  | |');
gotoxy(56,11);
writeln('| |    "| |      | |      | |  |_/___) |   | |       | |   `"  __) |  | |');
gotoxy(56,12);
writeln('| |     | |      | |      | |   ."____."   | |       | |   _  |__ ".  | |');
gotoxy(56,13);
writeln('| |    _| |_     | |      | |  / /____     | |       | |  | \____) |  | |');
gotoxy(56,14);
writeln('| |   |_____|    | |      | |  |_______|   | |       | |   \______."  | |');
gotoxy(56,15);
writeln('| | Presiona [1] | |      | | Presiona [2] | |       | | Presiona [3] | |');
gotoxy(56,16);
writeln('| "--------------" |      | "--------------" |       | "--------------" |');
gotoxy(56,17);
writeln(' \---------------/        \----------------/         \----------------/ ');
gotoxy(56,18);
writeln(' |  NIVEL UNO    |          |   NIVEL DOS   |          |  NIVEL TRES   |');

  randomize;
  numeroPalabra:= random(max);
	repeat
	 begin
    readln(nivel);
	case nivel of
    '1' : begin
          palabra:= upcase(PalabrasN1[numeroPalabra]);
          pista:= PistaN1[numeroPalabra];
          end;
    '2' : begin
          palabra:= upcase(PalabrasN2[numeroPalabra]);
          pista:= PistaN2[numeroPalabra];
          end;
    '3' : begin
          palabra:= upcase(PalabrasN3[numeroPalabra]);
          pista:= PistaN3[numeroPalabra];
          end;
    else Writeln('No ha elegido una opcion correcta, por favor intente de nuevo.');
    end;
  end;
    until ((nivel = '1') or (nivel = '2') or (nivel = '3'));
end;

procedure Ganaste;
begin
clrscr;
TextColor(LightGreen);
 gotoxy(62,27);
writeln(' _____       ___   __   _       ___   _____   _____   _____  ');
 gotoxy(62,28);
writeln('/  ___|     /   | |  \ | |     /   | /  ___/ |_   _| | ____| ');
 gotoxy(62,29);
writeln('| |        / /| | |   \| |    / /| | | |___    | |   | |__   ');
 gotoxy(62,30);
writeln('| |  _    / / | | | |\   |   / / | | \___  \   | |   |  __|  ');
 gotoxy(62,31);
writeln('| |_| |  / /  | | | | \  |  / /  | |  ___| |   | |   | |___  ');
 gotoxy(62,32);
writeln('\_____/ /_/   |_| |_|  \_| /_/   |_| /_____/   |_|   |_____| ');
 gotoxy(62,34);
writeln('            Presiona [ENTER] para volver al menu.            ');
end;

procedure Perdiste;
begin
// Quitar Pista
gotoxy(40,30);
writeln('                                                                                                                     ');
TextColor(Yellow);
  gotoxy(62,27);
writeln(' _____   _____   _____    _____   _   _____   _____   _____  ');
  gotoxy(62,28);
writeln('|  _  \ | ____| |  _  \  |  _  \ | | /  ___/ |_   _| | ____| ');
  gotoxy(62,29);
writeln('| |_| | | |__   | |_| |  | | | | | | | |___    | |   | |__   ');
  gotoxy(62,30);
writeln('|  ___/ |  __|  |  _  /  | | | | | | \___  \   | |   |  __|  ');
  gotoxy(62,31);
writeln('| |     | |___  | | \ \  | |_| | | |  ___| |   | |   | |___  ');
  gotoxy(62,32);
writeln('|_|     |_____| |_|  \_\ |_____/ |_| /_____/   |_|   |_____| ');
end;


procedure Fallo1;
begin
TextColor(White);
gotoxy(77,54);
writeln('|"|"""""""\ \        "|"|' );
gotoxy(77,55);
writeln('| |        \ \        | |' );
gotoxy(77,56);
writeln(': :         \ \       : :' );
gotoxy(77,57);
writeln('. .          `"       . .' );
end;

procedure Fallo2;
begin
TextColor(White);
gotoxy(77,51);
writeln('| |                 ');
gotoxy(77,52);
writeln('| |        ');
gotoxy(77,53);
writeln('""""""""""|:::///////"""| ');
gotoxy(77,54);
writeln('|"|"""""""\ \        "|"| ');
gotoxy(77,55);
writeln('| |        \ \        | | ');
gotoxy(77,56);
writeln(': :         \ \       : : ');
gotoxy(77,57);
writeln('. .          `"       . . ');
end;

procedure Fallo3;
begin
TextColor(White);
gotoxy(77,36);
writeln('| | / /');
gotoxy(77,37);
writeln('| |/ /');
gotoxy(77,38);
writeln('| | /');
gotoxy(77,39);
writeln('| |/');
gotoxy(77,40);
writeln('| |');
gotoxy(77,41);
writeln('| |');
gotoxy(77,42);
writeln('| |');
gotoxy(77,43);
writeln('| |');
gotoxy(77,44);
writeln('| |');
gotoxy(77,45);
writeln('| |');
gotoxy(77,46);
writeln('| |');
gotoxy(77,47);
writeln('| |');
gotoxy(77,48);
writeln('| |');
gotoxy(77,49);
writeln('| |');
gotoxy(77,50);
writeln('| |');
gotoxy(77,51);
writeln('| |');
gotoxy(77,52);
writeln('""""""""""|:::///////"""| ');
gotoxy(77,54);
writeln('|"|"""""""\ \        "|"| ');
gotoxy(77,55);
writeln('| |        \ \        | | ');
gotoxy(77,56);
writeln(': :         \ \       : : ');
gotoxy(77,57);
writeln('. .          `"       . . ');
end;

procedure Fallo4;
begin
TextColor(White);
gotoxy(77,35);
writeln(' ___________.._______ ');
gotoxy(77,36);
writeln('| .__________))______|');
gotoxy(77,37);
writeln('| | / /');
gotoxy(77,38);
writeln('| |/ /');
gotoxy(77,39);
writeln('| | /        ."". ');
gotoxy(77,40);
writeln('| |/        / o o \');
gotoxy(77,41);
writeln('| |         |  _  |');
gotoxy(77,42);
writeln('| |          \ _ /');
gotoxy(77,43);
writeln('| |');
gotoxy(77,44);
writeln('| |');
gotoxy(77,45);
writeln('| |');
gotoxy(77,46);
writeln('| |');
gotoxy(77,47);
writeln('| |');
gotoxy(77,48);
writeln('| |');
gotoxy(77,49);
writeln('| |');
gotoxy(77,50);
writeln('| |');
gotoxy(77,51);
writeln('| |');
gotoxy(77,52);
writeln('| |');
gotoxy(77,53);
writeln('""""""""""|:::///////"""|');
gotoxy(77,54);
writeln('|"|"""""""\ \        "|"|');
gotoxy(77,55);
writeln('| |        \ \        | |');
gotoxy(77,56);
writeln(': :         \ \       : :');
gotoxy(77,57);
writeln('. .          `"       . .');
end;

procedure Fallo5;
begin
TextColor(White);
gotoxy(77,35);
writeln(' ___________.._______ ');
gotoxy(77,36);
writeln('| .__________))______|');
gotoxy(77,37);
writeln('| | / /');
gotoxy(77,38);
writeln('| |/ /');
gotoxy(77,39);
writeln('| | /        ."".');
gotoxy(77,40);
writeln('| |/        / o o \');
gotoxy(77,41);
writeln('| |         |  _  |');
gotoxy(77,42);
writeln('| |          \ _ /');
gotoxy(77,43);
writeln('| |');
gotoxy(77,44);
writeln('| |');
gotoxy(77,45);
writeln('| |');
gotoxy(77,46);
writeln('| |');
gotoxy(77,47);
writeln('| |');
gotoxy(77,48);
writeln('| |');
gotoxy(77,49);
writeln('| |');
gotoxy(77,50);
writeln('| |');
gotoxy(77,51);
writeln('| |');
gotoxy(77,52);
writeln('| |');
gotoxy(77,53);
writeln('""""""""""|:::///////"""|');
gotoxy(77,54);
writeln('|"|"""""""\ \        "|"|');
gotoxy(77,55);
writeln('| |        \ \        | |');
gotoxy(77,56);
writeln(': :         \ \       : :');
gotoxy(77,57);
writeln('. .          `"       . .');
end;

procedure Fallo6;
begin
TextColor(White);
gotoxy(77,35);
writeln(' ___________.._______ ');
gotoxy(77,36);
writeln('| .__________))______|');
gotoxy(77,37);
writeln('| | / /');
gotoxy(77,38);
writeln('| |/ /');
gotoxy(77,39);
writeln('| | /        ."".');
gotoxy(77,40);
writeln('| |/        / o o \');
gotoxy(77,41);
writeln('| |         |  _  |');
gotoxy(77,42);
writeln('| |          \ _ /');
gotoxy(77,43);
writeln('| |         ./--\.');
gotoxy(77,44);
writeln('| |        /Y . . Y\');
gotoxy(77,45);
writeln('| |       // |   | \\');
gotoxy(77,46);
writeln('| |      //  | . |  \\');
gotoxy(77,47);
writeln('| |     (")  |   |  (")');
gotoxy(77,48);
writeln('| |');
gotoxy(77,49);
writeln('| |');
gotoxy(77,50);
writeln('| |');
gotoxy(77,51);
writeln('| |');
gotoxy(77,52);
writeln('| |');
gotoxy(77,53);
writeln('""""""""""|:::///////"""|');
gotoxy(77,54);
writeln('|"|"""""""\ \        "|"|');
gotoxy(77,55);
writeln('| |        \ \        | |');
gotoxy(77,56);
writeln(': :         \ \       : :');
gotoxy(77,57);
writeln('. .          `"       . .');
end;

procedure Fallo7;
begin
//////// Fallo 7 ////////
TextColor(White);
gotoxy(77,35);
writeln(' ___________.._______');
gotoxy(77,36);
writeln('| .__________))______|');
gotoxy(77,37);
writeln('| | / /');
gotoxy(77,38);
writeln('| |/ /');
gotoxy(77,39);
writeln('| | /        ."".');
gotoxy(77,40);
writeln('| |/        / o o \');
gotoxy(77,41);
writeln('| |         |  _  |');
gotoxy(77,42);
writeln('| |          \ _ /');
gotoxy(77,43);
writeln('| |         ./--\.');
gotoxy(77,44);
writeln('| |        /Y . . Y\');
gotoxy(77,45);
writeln('| |       // |   | \\');
gotoxy(77,46);
writeln('| |      //  | . |  \\');
gotoxy(77,47);
writeln('| |     (")  |   |  (")');
gotoxy(77,48);
writeln('| |          ||-||');
gotoxy(77,49);
writeln('| |          || ||');
gotoxy(77,50);
writeln('| |          || ||');
gotoxy(77,51);
writeln('| |         / | | \');
gotoxy(77,52);
writeln('| |         `-" `-"');
gotoxy(77,53);
writeln('""""""""""|:::///////"""|');
gotoxy(77,54);
writeln('|"|"""""""\ \        "|"|');
gotoxy(77,55);
writeln('| |        \ \        | |');
gotoxy(77,56);
writeln(': :         \ \       : :');
gotoxy(77,57);
writeln('. .          `"       . .');
end;

procedure Fallo8;
begin
//////// Fallo 8 ////////
TextColor(White);
gotoxy(77,35);
writeln(' ___________.._______');
gotoxy(77,36);
writeln('| .__________))______|');
gotoxy(77,37);
writeln('| | / /      ||');
gotoxy(77,38);
writeln('| |/ /       ||');
gotoxy(77,39);
writeln('| | /        ||.-"".');
gotoxy(77,40);
writeln('| |/         |/  _  \');
gotoxy(77,41);
writeln('| |          ||  `/,|');
gotoxy(77,42);
writeln('| |          (\\`_."');
gotoxy(77,43);
writeln('| |         .-`--".');
gotoxy(77,44);
writeln('| |        /Y . . Y\');
gotoxy(77,45);
writeln('| |       // |   | \\');
gotoxy(77,46);
writeln('| |      //  | . |  \\');
gotoxy(77,47);
writeln('| |     ")   |   |   ("');
gotoxy(77,48);
writeln('| |          ||-||');
gotoxy(77,49);
writeln('| |          || ||');
gotoxy(77,50);
writeln('| |          || ||');
gotoxy(77,51);
writeln('| |          || ||');
gotoxy(77,52);
writeln('| |         / | | \');
gotoxy(77,53);
writeln('""""""""""|_`-" `-" |"""|');
gotoxy(77,54);
writeln('|"|"""""""\ \        "|"|');
gotoxy(77,55);
writeln('| |        \ \        | |');
gotoxy(77,56);
writeln(': :         \ \       : :');
gotoxy(77,57);
writeln('. .          `"       . .');
end;


procedure Jugar(var palabra:letra);
    var
    i,j,noencontrado,fallo,encontrado,duplicado: Integer;
    letra:Char; letraingresada:string;
begin
fallo:=0;
encontrado:=0;
clrscr;
// Escribo los espacios de la palabra
for i := 1 to Length(palabra) do
begin
  if i=1 then
  begin
    gotoxy(84,13);
  end
  else 
    begin
      gotoxy(84+i-1,13);
    end;
  writeln('_');
end;
//////// Escribir seccion de aciertos y vidas
  gotoxy(100,5);
  TextColor(Red);
  writeln('VIDAS RESTANTES:',MaxIntentos-fallo);
  gotoxy(44,5);
  TextColor(LightGreen);
  writeln('ACIERTOS: ',encontrado);

  letraingresada:= '';
// Leer letras y comparar si existe e imprimir.
  repeat
    duplicado:=0;
    noencontrado:= 0;
    gotoxy(80,15);
    TextColor(White);
    writeln('Escriba una letra: ');
    gotoxy(99,15);
    readln(letra);
    ClrEol;
    letra:= upcase(letra);
    
// Evitar que ingrese duplicdo y se cuente como acierto.

if (Length(letraingresada) > 1) then
begin
    for j := 1 to Length(letraingresada) do
    begin
        if ((letra = letraingresada[j])) then
        begin
          duplicado:= duplicado + 1;          
        end;
    end;
end;

// Escribir en la posicion si la letra se encuentra y no existe duplicado de la letra al ingresar

    for i := 1 to Length(palabra) do
    begin

      if ((letra = palabra[i]) and (duplicado = 0)) then
      begin
        letraingresada:= letraingresada + letra;
// Posicionar las letras correctas en pantalla
        if i=1 then
          begin
          gotoxy(84,13);
          end
        else 
          begin
            gotoxy(84+i-1,13);  
          end;
        TextColor(White);        
        write(letra);
        gotoxy(50,10);
        TextColor(LightGreen);
        writeln('...:::::::::::::::::::::: ENCONTRADO ::::::::::::::::::::::::...');
        encontrado:= encontrado + 1;
        gotoxy(44,5);
        TextColor(LightGreen);
        writeln('ACIERTOS: ',encontrado);
        
    end 
      else
          begin
            noencontrado:= noencontrado + 1;
          end;
    if duplicado > 0 then
    begin
      gotoxy(50,10);
      TextColor(Yellow);
      writeln('...:::::::::: LETRA DUPLICADA - TE QUITAMOS UNA VIDA ::::::::...');
    end;
 end;

    if noencontrado=Length(palabra) then
    begin
      fallo:= fallo + 1;
      gotoxy(100,5);
      TextColor(Red);
      writeln('VIDAS RESTANTES:',MaxIntentos-fallo);
     case fallo of
      1 : Fallo1;
      2 : Fallo2;
      3 : Fallo3;
      4 : Fallo4;
      5 : Fallo5;
      6 : Fallo6;
      7 : Fallo7;
      8 : Fallo8; 
      end;
    end;

    if fallo > 3 then
    begin
      TextColor(Yellow);  
      gotoxy(40,30);
      writeln('PISTA: ',pista)
    end;

  until ( (fallo = MaxIntentos) or (encontrado = Length(palabra)) );

  if fallo = MaxIntentos then
  begin
    
    TextColor(Red);
    //writeln('Haz perdido');
    Perdiste;
    gotoxy(74,34);
    writeln('Haz perdido :( , la palabra era ',palabra);
  end
  else 
    begin
      gotoxy(50,17);
      TextColor(LightGreen);
      Ganaste;
    end;
end; {Procedure}

////////////////////////////////////// SEPARADOR //////////////////////////////////////////////////////

procedure Fondo;
var fila,columna:byte;
begin
  for fila:=2 to 100 do begin
    if (fila = 2) or (fila = 100) then 
      begin
        for columna:=2 to 100 do begin
        textbackground(blue);
        gotoxy(columna,fila);
        write(' ');
      end;
 end  else  begin
      textbackground(blue);
      gotoxy(2,fila);
      write(' ');
      gotoxy(100,fila);
      write(' ');
             end;
    end;
end;
/////////////////////////////////////////////////// SEPARADOR ////////////////////////////////////////////////////

(* Cuerpo Principal *)

begin

    repeat
    HighVideo;
    Fondo;
IrMenu: Menu(opcion);
    if opcion = '1' then
    begin    
    Nivel(palabra,pista,opcion);
    Jugar(palabra);
    readln;
    goto IrMenu;
    end;    
    until (Salir = true);
end.
