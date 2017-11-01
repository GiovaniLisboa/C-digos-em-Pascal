Program lista_3_02;
Var a: integer;
		
Begin
		write('Entre com um numero: ');
    readln(a);
    if ((a mod 2) = 0)
		 	then writeln(chr(144),' par')
     	else writeln('N',chr(134),'o ',chr(130),' par');
    
		Readln;
End.