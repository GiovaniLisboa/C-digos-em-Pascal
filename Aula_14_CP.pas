Program Controle_de_ponto;
Type	cartao=record
				dia,em,sm,et,st: integer;
			End;
		
Type	total=record
				atrasos,horas: integer;
			End;
			
Var cont,i: integer;
    total_horas,total_atrasos, media_horas,media_atrasos: integer;
    tm,tt,am,at,me,ms: integer;
    cartao_dia: array [1..31] of cartao;
    total_dia: array [1..31] of total;
		teste: boolean;
		mes_arq,ano_arq,caminho: string;
		arq_c: file of cartao; 

//Módulos        
Procedure entrada;
Begin
	cont:=0;
	Repeat
		cont:= cont+1;
		Write('Insira o dia do cartão de ponto: ');
		Repeat
			teste:=true;
			Readln(cartao_dia[cont].dia);
			If cartao_dia[cont].dia<1
				Then	Begin
							teste:=false;
							Write('Data inválida. Insira o dia do cartão de ponto: ');
							End
				Else	If cartao_dia[cont].dia>31
							Then	Begin
										teste:=false;
										Write('Data inválida. Insira o dia do cartão de ponto: ');
										End;	
		until teste=true; Writeln;
		Write('Horário de entrada da manhã (DIA ',cartao_dia[cont].dia,'): '); Readln(cartao_dia[cont].em);
    Write('Horário de saída da manhã (DIA ',cartao_dia[cont].dia,'): '); Readln(cartao_dia[cont].sm);
    Write('Horário de entrada da tarde (DIA ',cartao_dia[cont].dia,'): '); Readln(cartao_dia[cont].et);
    Write('Horário de saída da tarde (DIA ',cartao_dia[cont].dia,'): '); Readln(cartao_dia[cont].st);
    Write(arq_c,cartao_dia[cont]); Writeln;	
		Writeln('Deseja entrar com uma nova data? (1. Sim / 2. Não)'); Readln(i);
		Case i of
			1: teste:=true;
			2: teste:=false;
		End;
		Writeln;		
  Until teste=false;
End;
  	      
Procedure min_entrada_manha;
Begin
 	me:=(cartao_dia[i].em DIV(100))*60 + (cartao_dia[i].em MOD 100);
End;
            
Procedure min_saida_manha;
Begin
 	ms:=(cartao_dia[i].sm DIV 100)*60 + (cartao_dia[i].sm MOD 100);
End;  
  
Procedure manha;
Begin
 	min_entrada_manha;
 	min_saida_manha;
 	tm:= ms-me;
 	If me>480
 		Then	am:= me-480
 		Else  am:= 0;	
End;      
    
Procedure min_entrada_tarde;
Begin
 	me:=(cartao_dia[i].et DIV 100)*60 + (cartao_dia[i].et MOD 100);
End;
           
Procedure min_saida_tarde;
Begin
 	ms:=(cartao_dia[i].st DIV 100)*60 + (cartao_dia[i].st MOD 100);
End;
  
Procedure tarde;
Begin
	min_entrada_tarde;
	min_saida_tarde;
	tt:= ms-me;
	If me>840
		Then	at:= me-840
		Else  at:= 0;
End;
  
Procedure calculo;
Begin
 	For i:= 1 to cont do
 	Begin
		manha;
		tarde;
		total_dia[i].atrasos:=am+at;
		total_dia[i].horas:=tm+tt;
		total_horas:=total_horas+total_dia[i].horas;
		total_atrasos:=total_atrasos+total_dia[i].atrasos;
	End;
	media_horas:=(total_horas) DIV (cont);
	media_atrasos:=(total_atrasos) DIV (cont);
End;
		      
Procedure impressao;
Begin
	Writeln('RELATÓRIO DE PONTO DO MÊS ',mes_arq,'.',ano_arq); Writeln;
	For i:=1 to cont do
	Begin
		Writeln('DIA ',cartao_dia[i].dia);
		If (cartao_dia[i].em MOD 100)<10
			Then Writeln('Entrada Manhã: ',(cartao_dia[i].em DIV 100),':0',(cartao_dia[i].em MOD 100))
			Else Writeln('Entrada Manhã: ',(cartao_dia[i].em DIV 100),':',(cartao_dia[i].em MOD 100));    
		If (cartao_dia[i].sm MOD 100)<10
			Then Writeln('Saída Manhã: ',(cartao_dia[i].sm DIV 100),':0',(cartao_dia[i].sm MOD 100))
			Else Writeln('Saída Manhã: ',(cartao_dia[i].sm DIV 100),':',(cartao_dia[i].sm MOD 100));
    If (cartao_dia[i].et MOD 100)<10
			Then Writeln('Entrada Tarde: ',(cartao_dia[i].et DIV 100),':0',(cartao_dia[i].et MOD 100))
			Else Writeln('Entrada Tarde: ',(cartao_dia[i].et DIV 100),':',(cartao_dia[i].et MOD 100));    
		If (cartao_dia[i].st MOD 100)<10
			Then Writeln('Saída Tarde: ',(cartao_dia[i].st DIV 100),':0',(cartao_dia[i].st MOD 100))
			Else Writeln('Saída Tarde: ',(cartao_dia[i].st DIV 100),':',(cartao_dia[i].st MOD 100));
    If (total_dia[i].horas MOD 60)<10
    	Then	Writeln('Total de horas trabalhadas no dia: ',((total_dia[i].horas) DIV 60),'h0',((total_dia[i].horas) MOD 60),'min')
    	Else	Writeln('Total de horas trabalhadas no dia: ',((total_dia[i].horas) DIV 60),'h',((total_dia[i].horas) MOD 60),'min');
		If (total_dia[i].atrasos MOD 60)<10
    	Then	Writeln('Tempo de atraso no dia: ',((total_dia[i].atrasos) DIV 60),'h0',((total_dia[i].atrasos) MOD 60),'min')
    	Else	Writeln('Tempo de atraso no dia: ',((total_dia[i].atrasos) DIV 60),'h',((total_dia[i].atrasos) MOD 60),'min');
    Writeln;
	End;
    Writeln;
    If (total_horas MOD 60)<10
    	Then	Writeln('Tempo de atraso no mês: ',((total_horas) DIV 60),'h0',((total_horas) MOD 60),'min')
    	Else	Writeln('Tempo de atraso no mês: ',((total_horas) DIV 60),'h',((total_horas) MOD 60),'min');
		If (total_atrasos MOD 60)<10
    	Then	Writeln('Tempo de atraso no mês: ',((total_atrasos) DIV 60),'h0',((total_atrasos) MOD 60),'min')
    	Else	Writeln('Tempo de atraso no mês: ',((total_atrasos) DIV 60),'h',((total_atrasos) MOD 60),'min');
    If (media_horas MOD 60)<10
    	Then	Writeln('Média de horas trabalhadas por dia: ',((media_horas) DIV 60),'h0',((media_horas) MOD 60),'min')
    	Else	Writeln('Média de horas trabalhadas por dia: ',((media_horas) DIV 60),'h',((media_horas) MOD 60),'min');
    If (media_atrasos MOD 60)<10
    	Then	Writeln('Média de atraso por dia: ',((media_atrasos) DIV 60),'h0',((media_atrasos) MOD 60),'min')
    	Else	Writeln('Média de atraso por dia: ',((media_atrasos) DIV 60),'h',((media_atrasos) MOD 60),'min');
End;

Procedure reescrever_arquivo;
Begin	
	Write('Insira o mês referente: '); readln(mes_arq);
	Write('Insira o ano referente: '); readln(ano_arq);
	//caminho:='C:\Users\Giovani\OneDrive\Documentos\'+mes_arq+ano_arq;
	caminho:='C:\Users\201711140029\Desktop\'+mes_arq+ano_arq;
	assign(arq_c,caminho);
	rewrite(arq_c);
End;

Procedure ler_arquivo;
Begin	
	Write('Insira o mês referente: '); readln(mes_arq);
	Write('Insira o ano referente: '); readln(ano_arq);
	//caminho:='C:\Users\Giovani\OneDrive\Documentos\'+mes_arq+ano_arq;
	caminho:='C:\Users\201711140029\Desktop\'+mes_arq+ano_arq;
	assign(arq_c,caminho);
	reset(arq_c);
End;
    
//Programa Principal        
Begin
	Writeln('Olá! Bem-vindo(a) ao Módulo de controle de ponto'); Writeln;
	Writeln('MENU');
	Writeln('1. Criar arquivo');
	Writeln('2. Ler arquivo'); Writeln;
	Write('Insira a opção desejada: '); Readln(i); Writeln;
	Case i of
		1:	Begin
					Reescrever_arquivo;
					Entrada;
					If cont>0 then
					begin	
						Calculo;
						clrscr;
						Impressao;
					End;
					close(arq_c);
				End;
		2:	Begin
					Ler_arquivo;
					cont:=0;
					While not eof(arq_c) do
					Begin
						cont:=cont+1;
						read(arq_c,cartao_dia[cont]);
					End;
					If cont>0 then
					begin	
						Calculo;
						clrscr;
						Impressao;
					End;
					close(arq_c);
				End;
	End;		 
End.
