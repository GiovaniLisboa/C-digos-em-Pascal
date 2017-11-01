Program Tarefa_11;

var ma,mb,ms: array [1..3,1..3] of integer;
		i,j,s: integer;

Begin
	//Matriz A
	For i:= 1 to 3 do
	Begin
		For j:= 1 to 3 do
		Begin
		Write('Insira o valor de A',i,j,': ');
		Readln(ma[i,j]);
		End;
	End;
	Writeln;
	//Matriz B
	For i:= 1 to 3 do
	Begin
		For j:= 1 to 3 do
		Begin
		Write('Insira o valor de B',i,j,': ');
		Readln(mb[i,j]);
		End;
	End;
	Writeln;
	//Matriz SOMA
	Writeln('SOMA[i,j]= A[i,j]+B[i,j]');
	Writeln;
	For i:= 1 to 3 do
	Begin
		For j:= 1 to 3 do
		Begin
		ms[i,j]:= ma[i,j]+mb[i,j];
		Write('SOMA',i,j,': ',ms[i,j]);
		Writeln;
		End;
	End;
	Writeln;
  //Soma dos elementos da Matriz
  For i:= 1 to 3 do
	Begin
		For j:= 1 to 3 do
		Begin
		s:=s+ms[i,j];
		End;
	End;
	Writeln;
	Writeln('Soma dos elementos da matriz SOMA: ',s);
	Readln;
End.