Program Tarefa_14_2;

var i,N: integer;
		va,vb,soma: array [1..10000000] of integer;

Begin
	Write('Insira o número de células do vetor: ');
	Readln(N);
	For i:= 1 to N do
	Begin
		Write('Insira o valor de A',i,': ');
		Readln(va[i]);
	End;
	For i:= 1 to N do
	Begin
		Write('Insira o valor de B',i,': ');
		Readln(vb[i]);
		soma[i]:=va[i]+vb[i];
	End;
	Writeln;
	For i:= 1 to N do
	Begin
		Writeln('SOMA[',i,']: ',soma[i]);
	End;	
  
End.