Program lista_3_04;
Var a,b,media: real;
		
Begin
		writeln('Entre com a primeira nota: ');
    read(a);
    writeln('Entre com a segunda nota: ');
    read(b);
    media := (a+b)/2;
    writeln('Media do aluno: ',media:0:2);
    if(media >= 5)
			then write('Aluno aprovado! ')
     	else writeln('aluno reprovado :( ');
    
		Readln;
End.