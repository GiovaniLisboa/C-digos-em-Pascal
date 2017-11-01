Program lista_8_10 ;
Var cq,bs,bo,ha,cb,re: real;
		escolha,pedido,quant: integer;
		total: real;

Begin
	cq:= 1.1;
	bs:= 1.3;
	bo:= 1.5;
	ha:= 1.1;
	cb:= 1.3;
	re:= 1;
	
	while (escolha<1) or (escolha>2) do
	begin
		Writeln('Adicionar item ao pedido? (1.Sim / 2.Não)'); 
		Readln(escolha);
  end;
	
	While escolha<>2 do
		Begin
			Writeln;
	  	Writeln('MENU');
			Writeln('100. Cachorro-Quente (R$1,10)');
			Writeln('101. Bauru simples (R$1,30)'); 
			Writeln('102. Bauru com ovo (R$1,50)'); 
			Writeln('103. Hamburguer (R$1,10)'); 
			Writeln('104. Cheeseburguer (R$1,30)'); 
			Writeln('105. Refrigerante (R$1,00)');
			Writeln;
			
			pedido:=0;
			while (pedido<100) or (pedido>105) do
			Begin
				Writeln('Insira o código do item: ');
				Readln(pedido);
			End;
			Writeln('Insira a quantidade: ');
			Readln(quant);
			Case pedido of
				100:	begin
							total:= total+cq*quant;
							writeln('Item adicionado.');
							end;
				101:	begin
							total:= total+bs*quant;
							writeln('Item adicionado.');
							end;
				102:	begin
							total:= total+bo*quant;
							writeln('Item adicionado.');
							end;
				103:	begin
							total:= total+ha*quant;
							writeln('Item adicionado.');
							end;
				104:	begin
							total:= total+cb*quant;
							writeln('Item adicionado.');
							end;
				105:	begin
							total:= total+re*quant;
							writeln('Item adicionado.');
							end;
			end;
			escolha:=0;
			while (escolha<1) or (escolha>2) do
			begin
				Writeln('Adicionar item ao pedido? (1.Sim / 2.Não)'); 
				Readln(escolha);
      end;
    end;
    Writeln('Total do pedido -> R$',total:0:2);
    Readln;
End.
