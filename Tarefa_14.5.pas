Program Tarefa_14_5;

var va: array [1..5] of real;
    i: integer;
    media: real;
Begin
	For i:= 1 to 5 do
	Begin
		Write('Insira a altura do ',i,'� atleta: ');
		Readln(va[i]);
	  media:=media+va[i];
	End;
	media:=media/5;
	Writeln;
	For i:= 1 to 5 do
	Begin
		If va[i]>media
	Then writeln('A altura do ',i,'� atleta [',va[i]:0:2,'m] est� acima da m�dia.');
	End;  
End.