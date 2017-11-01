Program Tarefa_14_7;

var i,lim_vetor,menor: integer;
		va: array [1..10000000] of integer;

Begin
	Write('Insira o número de células do vetor: ');
	Readln(lim_vetor);
	For i:= 1 to lim_vetor do
	Begin
		Write('Insira o valor de A',i,': ');
		Readln(va[i]);
		If i=1
		Then menor:=va[i]
		Else 	If va[i]<menor
					Then menor:=va[i];
	End;
	Writeln;
	Writeln('Menor elemento do vetor: ',menor);
	  
End.