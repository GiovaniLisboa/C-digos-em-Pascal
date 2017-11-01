Program Tarefa_14_2;

var i,lim_vetor: integer;
		va,vb: array [1..10000000] of integer;

Begin
	Write('Insira o número de células do vetor: ');
	Readln(lim_vetor);
	For i:= 1 to lim_vetor do
	Begin
		Write('Insira o valor de A',i,': ');
		Readln(va[i]);
		vb[i]:=va[i];
	End;
	Writeln;
	For i:= 1 to lim_vetor do
	Begin
		Writeln('B',i,': ',vb[i]);
	End;	
  
End.