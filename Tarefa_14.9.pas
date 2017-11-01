Program Tarefa_14_9;
var va,vb: array [1..10] of integer;
		x,i: integer;
Begin
	For i:= 1 to 10 do
  Begin
  	Write('Insira o valor de A',i,': ');
  	Readln(va[i]);
  End;
  Writeln;
  Write('Insira o valor do multiplicador: ');
  Readln(x);
  Writeln;
  For i:= 1 to 10 do
  Begin
  	vb[i]:=va[i]*x;
  	Writeln('B',i,'(A',i,'*',x,')= ',vb[i]);
  End;
End.