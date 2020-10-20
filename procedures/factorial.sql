declare 
    num number:=5;
    fac number;
procedure factorial(num in number,fac out number) is
begin
    fac:=1;
    for i in 1..num loop
    fac:=fac*i;
    end loop;
end;
begin
    factorial(num,fac);
    dbms_output.put_line(fac);
end;
/