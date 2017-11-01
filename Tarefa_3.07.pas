Program lista_3_07 ;
Var sal,emp,valor_par,cond: real;
		par: integer;

Begin
		Write('Insira o valor do emprestimo: ');
    Readln(emp);
    Write('Insira o valor do salario do solicitante: ');
    Readln(sal);
    Write('Insira o numero de parcelas: ');
    Readln(par);
    
    cond:=sal*0.3;
		valor_par:= emp/par;
    
    Writeln('Valor das parcelas: ',valor_par);
    Writeln('30 porcento do salario: ',cond);
    
    If(cond<valor_par)
    then writeln('Emprestimo negado.')
    else writeln('Emprestimo liberado');
    
		Readln;
End.