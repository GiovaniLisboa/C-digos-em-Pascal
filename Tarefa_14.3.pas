Program Tarefa_14_3;

var va: array [1..10] of real;
    i: integer;
    media: real;
    sair: boolean;
Begin
	For i:= 1 to 10 do
	Begin
		Write('Insira a nota do ',i,'º aluno: ');
		Readln(va[i]);
	  media:=media+va[i];
	End;
	media:=media/10;
	Writeln;
	Repeat
	sair:=true;
	Write('Insira o número do aluno para consultar a nota: ');
	Readln(i);
	Writeln('Nota do aluno: ',va[i]:0:2);
	Writeln('Média da turma: ',media:0:2);
	Writeln('Variação da nota para a média: ',(va[i]-media):0:2);
	If va[i]>media
	Then writeln('Nota acima da média.')
	Else	If va[i]<media
				Then writeln('Nota abaixo da média.')
				Else writeln('Nota igual a média.');
	Writeln('Comparar outra nota individual com a média? (True para Sim / False para Não)');
	Readln(sair);
	Until sair=false;	
  
End.