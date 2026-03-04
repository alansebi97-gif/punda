create or replace function fact(n in number)
return number
is
 
 f number:=0;
 i number;
 
 
 begin
 
 for i in 1..n loop
     f:=f*i;
     
 end loop;
 
 return f;
 end;
 
/




