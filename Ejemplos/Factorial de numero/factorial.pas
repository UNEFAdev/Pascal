Program factorial;

Uses
	Crt;
Var
	fact: Real;
	num: Integer;
	numero: Integer;
	opcion: String;
Begin
	Repeat
		fact := 1;
		WriteLn('Introduzca el numero');
		ReadLn(numero);
		num := numero;
		If (numero>0) Then Begin
			While (numero>0) Do Begin
				fact := fact*numero;
				numero := numero-1;

			End;
		End
		Else Begin
			If (numero=0) Then Begin
				fact := 1;
			End
			Else Begin
				fact := 0;
			End;
		End;
		If (fact>0) Then Begin
			WriteLn('El factorial de ',num,' Es ',fact:9:0);
		End
		Else Begin
			WriteLn('No existe factorial de un numero negativo o fracción');
		End;
		WriteLn('Desea salir? (Presione S para salir, y N para continuar)');
		ReadLn(opcion);
		If (opcion<>'S') Then Begin
			ClrScr;
		End;
	Until (opcion='S');
End.

