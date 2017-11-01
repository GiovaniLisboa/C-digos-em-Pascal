Program Aula_13_1;

type	agenda = record
				nome: string[20];
				numero:integer;
			end;

var	reg_a: agenda;
		arq_a: file of agenda;
		externo,caminho: string;
		teste: boolean;
    i: integer;
		
Begin
	Write('Insira o nome do arquivo: ');
	Read(externo);
	caminho:='C:\Users\201711140029\Desktop\'+externo;
    assign(arq_a,caminho);
    rewrite(arq_a);
    Repeat
     	Write('Nome: ');
		 	Readln(reg_a.nome);
	 		Write('Numero: ');
	 		Readln(reg_a.numero);
	 		Write(arq_a,reg_a);
     	Writeln('Deseja inserir um novo contato? (1. Sim / 2. Nao)');
     	Readln(i);
     	Case i of
          1: teste:=true;
          2: teste:=false;
     End;
    Until teste= false;
  close (arq_a);
End.
