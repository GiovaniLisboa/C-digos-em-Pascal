Program Tarefa_14_6;
Var	va: array [1..10] of string;
		i: integer;
		nome: string;
		sair,confere: boolean;
Begin
	For i:= 1 to 10 do
	Begin
		Write('Insira o nome do ',i,'º convidado: ');
		Readln(va[i]);
	End;
	Repeat
	sair:=true;
	Writeln;
	Write('Insira o nome da pessoa que deseja entrar: ');
	Readln(nome);
	confere:=false;
	For i:= 1 to 10 do
	Begin	
		If va[i]=nome
		Then confere:=true;
	End;
	If confere=true
	Then writeln('Entrada permitida.')
	Else writeln('Entrada não permitida.');
	Writeln;
	Writeln('Verificar outra pessoa? (True para Sim / False para Não)');
	Readln(sair);
	Until sair=false;	
  
End.