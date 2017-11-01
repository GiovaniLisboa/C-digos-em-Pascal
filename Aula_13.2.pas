Program Aula_13_2;

type	agenda = record
				nome: string[20];
				numero:integer;
			end;

var	reg_a: agenda;
		arq_a: file of agenda;
		externo,caminho: string;
		
Begin
	Write('Insira o nome do arquivo: ');
	Read(externo);
	caminho:='C:\Users\Giovani\Desktop\'+externo;
    assign(arq_a,caminho);
  Reset(arq_a);
	while not eof (arq_a) do
	begin
		read(arq_a,reg_a);
		writeln('Nome: ', reg_a.nome);
		writeln('Numero:', reg_a.numero);
		Writeln;
	end;
  close (arq_a);
End.
