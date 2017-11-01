Program lista_3_05;
Var a,b,c: integer;
		
Begin
	while (a=b) or (a=c) or (b=c) do
  	begin
    	write('Entre com o primeiro valor:');
    	readln(a);
    	write('Entre com o segundo valor:');
    	readln(b);
    	write('Entre com o terceiro valor:');
    	readln(c);
    	
    	if (a=b) or (a=c) or (b=c)
    	then writeln('VALORES INVALIDOS!');
    	
    	writeln;
    end;

	//A é maior
	if(a>b) and (a>c)
	then	if (b>c)
		 		then writeln(a,' > ',b,' > ',c)
		 		else writeln(a,' > ',c,' > ',b);
		 				
	//B é maior
  if(b>a) and (b>c)
	then	if (a>c)
		 		then writeln(b,' > ',a,' > ',c)
		 		else writeln(b,' > ',c,' > ',a);

	//C é maior
  if(c>a) and (c>b)
	then	if (a>b)
		 		then writeln(c,' > ',a,' > ',b)
		 		else writeln(c,' > ',b,' > ',a);
    
		Readln;
End.