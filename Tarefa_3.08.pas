Program lista_3_08 ;
Var time1,time2: string;
		gol1,gol2: integer;

Begin
		Write('Insira o nome do primeiro time: ');
    Readln(time1);
    Write('Gols marcados pelo primeiro time: ');
    readln(gol1);
    Write('Insira o nome do segundo time: ');
    Readln(time2);
    Write('Gols marcados pelo segundo time: ');
    readln(gol2);
    
    If (gol1>gol2)
    then writeln(time1,' venceu o jogo.')
    else 	if (gol2>gol1)
    			then writeln(time2,' venceu o jogo.')
    			else writeln('O jogo empatou.');
    
		Readln;
End.