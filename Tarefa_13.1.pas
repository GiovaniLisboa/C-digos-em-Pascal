Program Tarefa_13_1;
Var va: array [1..10] of integer;
		i,a: integer;
		teste: boolean;
Begin
	For i:= 1 to 10 do
	Begin
		Write('Insira o valor de A',i,': ');
		Readln(va[i]);
	End;
	Writeln;
	Repeat
		teste:=false;
		For i:= 1 to 9 do
		Begin
			If (va[i])>(va[i+1]) then
			Begin
				a:=va[i+1];
				va[i+1]:=va[i];
				va[i]:=a;
				teste:=true;
			End;
		End;
	Until teste=false;
	Writeln;
	For i:= 1 to 10 do
	Begin
		Writeln('A',i,': ',va[i]);
	End;	
End.