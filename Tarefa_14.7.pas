Program Tarefa_14_7;

var i,lim_vetor,maior: integer;
		va: array [1..10000000] of integer;

Begin
	Write('Insira o número de células do vetor: ');
	Readln(lim_vetor);
	For i:= 1 to lim_vetor do
	Begin
		Write('Insira o valor de A',i,': ');
		Readln(va[i]);
		If va[i]>maior
		Then maior:=va[i];
	End;
	Writeln;
	Writeln('Maior elemento do vetor: ',maior);
	  
End.