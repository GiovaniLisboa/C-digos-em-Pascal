Program lista_3_03;
Var a: integer;
		
Begin
		writeln('Macas: R$1,30/unidade em compras abaixo de 12 unidades e R$1,00/unidade em compras a partir de 12 unidades');
		writeln('Entre com a quantidade de macas: ');
    read(a);
    if (a >= 12)
			then writeln('Valor da compra: R$',a)
     	else writeln('Valor da compra: R$',(a*1.3):0:2);
    
		Readln;
End.