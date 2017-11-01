Program Tarefa_10;

var n,a,cont: integer;

Begin
//Questão 8	
	Writeln('8) Aperte ENTER para prosseguir.');
	Readln;
	Writeln;
	cont:=1;
	a:=0;		
	For cont:= 1 to 10 do
	Begin
		a:=a+1;
		writeln(a);
	End;
//Questão 9
  Writeln;
	Writeln('9) Aperte ENTER para prosseguir.');
	Readln;
	Writeln;
	a:=0;
	While n<10 do
	Begin
		For cont:= 1 to 10 do
		Begin
			a:=a+1;
			writeln(a);
		End;
		n:=n+1;
	End;	
//Questão 10
  Writeln;
	Writeln('10) Aperte ENTER para prosseguir.');
	Readln;
	Writeln;
	Write('Entre com o valor de N: ');
	Readln(N);
	Writeln;	
	cont:=1;
	a:=0;
	For cont:= 1 to N do
	Begin
		a:=a+1;
		writeln(a);
	End;
End.