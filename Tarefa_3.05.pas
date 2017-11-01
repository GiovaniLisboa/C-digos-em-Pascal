Program lista_3_05;
Var a,b,media: real;
		
Begin
		writeln('Entre com a primeira nota: ');
    read(a);
    writeln('Entre com a segunda nota: ');
    read(b);
    media := (a+b)/2;
    writeln('Media do aluno: ',media:0:2);
    if(media >= 9) and (media<=10)
			then write('Aluno aprovado com conceito EXCELENTE.')
			else	if (media<9) and (media>=7)
						then write('Aluno aprovado com conceito BOM.')
						else	if (media<7) and (media>=5)
									then write('Aluno aprovado com conceito REGULAR.')
     	else writeln('Aluno reprovado :( ');
    
		Readln;
End.