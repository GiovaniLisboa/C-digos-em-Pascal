Program Tarefa_14_1;

var va: array [1..5] of integer;
		i: integer;

Begin
	For i:= 1 to 5 do
	Begin
		Write('Insira o valor de A',i,': ');
		Readln(va[i]);
	End;
	Writeln;
	For i:= 5 downto 1 do
	Begin
		Writeln(va[i]);
	End;	
  
End.