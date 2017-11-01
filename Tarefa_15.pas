Program Tarefa_15;
var n1,n2,n3,media: array [1..40] of real;
		nome: array [1..40] of string;
		i,lim_vetor: integer;
		teste: boolean;
Begin
	Repeat
	teste:=true;
	Write('Insira o número de alunos da turma (lim.: 40 alunos): ');
	Readln(lim_vetor);
	If (lim_vetor<0) or (lim_vetor=0) or (lim_vetor>40)
	Then	Begin
					teste:=false;
		  		Writeln('Tamanho de turma inválido.');
				End;
	Writeln;						
	Until teste=true;			
	For i:= 1 to lim_vetor do
	Begin
		Write('Nome do aluno: ');
		Readln(nome[i]);
		Write('1ª nota: ');
		Readln(n1[i]);
		Write('2ª nota: ');
		Readln(n2[i]);
		Write('3ª nota: ');
		Readln(n3[i]);
		media[i]:=(n1[i]+n2[i]+n3[i])/3;
		Writeln('Média do aluno: ',media[i]:0:2);
		Writeln;
	End;  
End.