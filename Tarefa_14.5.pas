Program Tarefa_14_5;

var va: array [1..5] of real;
    i: integer;
    media: real;
Begin
	For i:= 1 to 5 do
	Begin
		Write('Insira a altura do ',i,'º atleta: ');
		Readln(va[i]);
	  media:=media+va[i];
	End;
	media:=media/5;
	Writeln;
	For i:= 1 to 5 do
	Begin
		If va[i]>media
	Then writeln('A altura do ',i,'º atleta [',va[i]:0:2,'m] está acima da média.');
	End;  
End.