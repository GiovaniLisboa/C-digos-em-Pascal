Program Tarefa_10_6;

var a,b: integer;

Begin

	Writeln('Para finalizar a série digite "-1".');
	Writeln;

	b:=0;

	While a<>(-1) do
	Begin
		Write('Insira um numero inteiro: ');
		Readln(a);
		If a>b
		then b:=a;
	End;
	
	Writeln;
	Writeln('O maior numero digitado foi ',b,'.');
	Readln;
		
  
End.