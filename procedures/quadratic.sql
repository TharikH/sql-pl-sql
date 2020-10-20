declare 
a number;
b number;
c number;
d number;
val1 number;
val2 number;
procedure quad(a in number,b in number,c in number,val1 out number,val2 out number,d out number) is
begin
d:=(b*b) - (4 * a *c);
if d<0 then 
    dbms_output.put_line('complex');
    val1:=(-b)/(2*a);
    val2:=sqrt(-d)/(2*a);
else
    d:=sqrt(d);
    val1:=((-b)+d)/(2*a);
    val2:=((-b)-d)/(2*a);
end if;
end;

begin 
a:=:a;
b:=:b;
c:=:c;
quad(a,b,c,val1,val2,d);
if(d<0) then
    dbms_output.put_line('roots are '|| val1 ||'+i'|| val2);
    dbms_output.put_line('roots are '|| val1 ||'-i'|| val2);
else
    dbms_output.put_line('roots are '|| val1 ||' and '|| val2);
end if;
end;
/