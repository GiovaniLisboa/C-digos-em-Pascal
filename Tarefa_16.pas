program registro_alunos;
uses crt;
type
    reg_aluno = record
        nome:string;
        nota1:real;
        nota2:real;
        nota3:real;
        media:real;
    end;
var
   i,max:integer;
   aluno:array[1..10] of reg_aluno;
   resp:string;

begin
   write('deseja inserir a informacao de quantos alunos',chr(63),'(limite = 10)');
   readln(max);
   for i := 1 to max do
   begin
        write('entre com o nome do aluno numero [',i,']');
        readln(aluno[i].nome);
        write('entre com a primeira nota:');
        readln(aluno[i].nota1);
        write('entre com a segunda nota:');
        readln(aluno[i].nota2);
        write('entre com a terceira nota:');
        readln(aluno[i].nota3);
        aluno[i].media := (aluno[i].nota1 +aluno[i].nota2 + aluno[i].nota3)/3;
        write('media:',aluno[i].media:0:2);
        readln;
        clrscr;

   end;
   resp := 'n';
   if (max > 1) then  // verifica se exite mais de 1 aluno
        begin
   repeat
        write('informe o numero do aluno para obter a sua informacao:');
        readln(i);
        if (i > max) then
        writeln('digite um numero valido para aluno')
        else
        begin
        writeln('aluno:',aluno[i].nome);
        writeln('nota 1:',aluno[i].nota1:0:2);
        writeln('nota 2:',aluno[i].nota2:0:2);
        writeln('nota 3:',aluno[i].nota3:0:2);
        writeln('media:',aluno[i].media:0:2);
        end;
        write('Deseja verifcar a informação de outro aluno',chr(63),'[s/n]');
        readln(resp);
        clrscr;
   until(resp = 'n');
   end;

   write('Saindo...');
   readln;

end.
