Program LerMatriz;
Var mat: array [1..1000,1..1000] of integer;
    LimN,LimM: integer;

Procedure ler_matriz;
Var i,j: integer;
Begin
    For i:= 1 to limn do
    Begin
        For j:= 1 to limm do
        Begin
            Write('Entre com o valor da c�lula M',i,j,': ');
            Readln(mat[i,j]);
        End;
    End;
End;

Procedure imprimir_matriz;
Var i,j: integer;
Begin
    For i:= 1 to limn do
    Begin
        For j:= 1 to limm do
        Begin
            Writeln('M',i,j,': ',mat[i,j]);
        End;
    End;
End;

Begin
    Write('Entre com o n�mero de linhas da matriz: ');
    Readln(limn);
    Write('Entre com o n�mero de colunas da matriz: ');
    Readln(limm);
    Writeln;
    ler_matriz;
    Writeln;
    imprimir_matriz;
		Writeln;
    ler_matriz;
    Writeln;
    imprimir_matriz;    
End.