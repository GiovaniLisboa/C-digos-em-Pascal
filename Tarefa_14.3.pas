Program Tarefa_14_3;

var va: array [1..10] of real;
    i: integer;
    media: real;
    sair: boolean;
Begin
	For i:= 1 to 10 do
	Begin
		Write('Insira a nota do ',i,'� aluno: ');
		Readln(va[i]);
	  media:=media+va[i];
	End;
	media:=media/10;
	Writeln;
	Repeat
	sair:=true;
	Write('Insira o n�mero do aluno para consultar a nota: ');
	Readln(i);
	Writeln('Nota do aluno: ',va[i]:0:2);
	Writeln('M�dia da turma: ',media:0:2);
	Writeln('Varia��o da nota para a m�dia: ',(va[i]-media):0:2);
	If va[i]>media
	Then writeln('Nota acima da m�dia.')
	Else	If va[i]<media
				Then writeln('Nota abaixo da m�dia.')
				Else writeln('Nota igual a m�dia.');
	Writeln('Comparar outra nota individual com a m�dia? (True para Sim / False para N�o)');
	Readln(sair);
	Until sair=false;	
  
End.