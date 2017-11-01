Program Tarefa_4;
var a,b,c: integer;
    d: real;

Function pot (eb: integer;ee:integer): integer;
var er,ei: integer;
Begin
er:=1;
For ei:=1 to ee
	do
	er:=er*eb;
pot:=er;
end;

begin
    a:=5;
    b:=10;
    c:=-8;
    d:=1.5;
    Writeln('Valor de A é: ',a);
    Writeln('Valor de B é: ',b);
    Writeln('Valor de C é: ',c);
    Writeln('Valor de D é: ',d:0:1);
    Readln();
    Writeln('A)',((2*A)MOD(3)-C));
    Writeln('B)',((SQRT(-2*C))/(4)):0:0);
    Writeln('C)',((20 DIV 3) DIV 3+ (pot(8,2))/2):0:0);
    Writeln('D)',(((30)mod(4)*(pot(3,3)))*(-1)):0:0);
    Writeln('E)',((pot(-c,2))+(d*10)/a):0:0);
    Writeln('F)',((SQRT((pot(A,2))))+c*d):0:0);
    
end.
