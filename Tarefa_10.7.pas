Program Tarefa_7;

var a: real;
		n,cont: integer;

Begin
		Write('Entre com o valor de N: ');
		Readln(N);
		a:=0;
		For cont:= 1 to N do
		Begin
			a:=a+((N-cont+1)/cont);
		End;
		Writeln('A=',a:0:2);
End.