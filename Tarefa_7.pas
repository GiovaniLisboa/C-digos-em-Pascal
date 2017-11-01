Program Tarefa_7;
var N1,N2,N3,N4,MA: real;
Begin
	Write('Insita a nota do bimestre 1: ');
	Readln(N1);
	Write('Insita a nota do bimestre 2: ');
	Readln(N2);
	Write('Insita a nota do bimestre 3: ');
	Readln(N3);
	Write('Insita a nota do bimestre 4: ');
	Readln(N4);
	MA:= (N1+N2+N3+N4)/4;
	Writeln();
	Writeln('Media Anual: ',MA:0:2);
	If (MA>=7) then
		Begin
		Writeln('Aluno aprovado');
		Writeln('Parabens!');
		End
	else
		Begin
		Writeln('Aluno reprovado!');
		Writeln('Estude mais! :(');
		End;
  Readln();
End.
