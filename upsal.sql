declare

 cursor c is select eno,salary from em13 where dno=5;
 e_no em13.eno%type;
 sal  em13.salary%type;


begin
 open c;
loop
 fetch c into e_no,sal;
 exit when c%NOTFOUND;
 update em13 set salary=sal+(sal*.05) where eno=e_no;
 insert into emp_raise values(e_no,sysdate);
 end loop;
 close c;
 
end;
 /
