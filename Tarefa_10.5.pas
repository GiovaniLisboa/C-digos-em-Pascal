Program Tarefa_10_5;

Var F,N,cont: integer;

Begin

	Write('Entre com o valor de N: ');
	Readln(N);
	
	cont:=1;
	F:=1;
	
	For cont:= 1 to N do
	Begin
	F:= F*cont;
	End;
	
	Writeln;
	Writeln(F);
	Readln;
  
End.