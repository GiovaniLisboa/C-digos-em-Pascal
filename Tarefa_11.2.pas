Program Tarefa_11;

var a: array [1..100] of integer;
		cont: integer;

Begin
		cont:=1;
		For cont:= 1 to 100 do
		Begin
			If (cont)MOD(2)=0
			then a[cont]:=1
			else a[cont]:=0;
			
			Writeln('A',cont,': ',a[cont]);
		End;
		  
  	Readln;
End.