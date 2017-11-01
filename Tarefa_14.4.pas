Program Tarefa_14_4;

var va: array [1..10] of integer;
		i: integer;

Begin
	For i:= 1 to 10 do
	Begin
		Write('Insira o valor do ',i,'º número: ');
		Readln(va[i]);
		va[i]:=va[i]*va[i];
	End;
	Writeln;
	For i:= 1 to 10 do
	Begin
		Writeln('A',i,': ',va[i]);
	End;	
  
End.