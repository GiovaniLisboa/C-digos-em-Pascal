Program Tarefa_13_2;
Var va: array [1..3,1..3] of integer;
		i,j,cont_p, cont_i: integer;
Begin
	For i:= 1 to 3 do
	Begin
		For j:= 1 to 3 do
		Begin
			Write('Insira o valor de A',i,j,': ');
			Readln(va[i,j]);
			If (va[i,j])MOD(2)=0
			Then cont_p:=cont_p+1
			Else cont_i:=cont_i+1
		End;
	End;
	Writeln;
	Writeln(cont_p,' elementos da matriz A são pares e ',cont_i,' elementos da matriz A são ímpares.');	
End.