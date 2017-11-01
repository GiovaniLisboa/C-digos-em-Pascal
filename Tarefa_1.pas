program meu_primeiro_program_pascal;

var    name: string;
       idade: integer;
       altura: real;


begin
     readln(name);
     readln(idade);
     readln(altura);
     writeln('Meu nome ',chr(130),' ',name,'.');
     writeln('Tenho ',idade,' anos.');
     writeln('Tenho ',altura:0:2,' metros.');
     //exemplo lógico
     writeln(true);
     writeln(false);
     readln;

end.
