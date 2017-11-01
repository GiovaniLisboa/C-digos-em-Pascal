program tarefa;
var
   a,b:real;
   c,i:integer;
   resp:string;
begin
     write('Entre com o primeiro valor: ');
     readln(a);
     repeat
     write('Entre com o segundo valor diferente de zero: ');
     readln(b);
     until(b <> 0);
     write('resultado da divisão do primeiro pelo segundo numero: ', (a/b):0:2);
     readln;
     write('-----------------------------');

     writeln('digite um numero inteiro ');
     readln(c);
     while(c > 1) do
        begin
        c := c - 1;
        writeln(c);
        end;


     writeln('-----------------------------');
     write('digite um numero para ver sua tabuada: ');
     readln(c);
     for i := 1 to  10 do
       begin
       writeln(c * i);
       end;

     writeln('-----------------------------');
     c := 0;
     a := 0;
     resp := 's';
     repeat
     write('digite o valor da mercadoria: ');
     readln(a);
     write('deseja inserir outra mercadoria? [s/n]: ');
     readln(resp);
     c := c + 1;
     b := b + a;
     until (resp = 'n');
     writeln('A quantidade total de mercadorias e = ',c);
     writeln('A media das mercadorias e = ',(b/c):0:2);
     readln;

end.
