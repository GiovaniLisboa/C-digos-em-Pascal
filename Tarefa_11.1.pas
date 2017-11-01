Program Pzim ;
var
  	vetor:array[1..100];
  	i:integer;
Begin
		for i := 1 to 100 do
		begin
			if (i mod 2 =0) then
				vetor[i]:= 0
			else
			  vetor[i]:= 1
		end;
  
End.
