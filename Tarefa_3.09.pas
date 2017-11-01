Program lista_3_09 ;
Var cod,senha: integer;

Begin
		While (cod<>1234) do
		Begin
			Write('Usuário: ');
			Readln(cod);
			If (cod<>1234)
			then writeln('USUÁRIO INVÁLIDO');
		End;
		While (senha<>9999) do
		Begin
			Write('Senha: ');
			Readln(senha);
			If (senha<>9999)
			then writeln('SENHA INCORRETA')
			else writeln('ACESSO PERMITIDO');
		End;
    Readln;
End.
