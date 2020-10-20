declare 
    num number:=6;
    f number;
function factorial(num number)
return number is 
fac number;
begin
    fac:=1;
    for i in 1..num loop
    fac:=fac*i;
    end loop;
    return fac;
end;
begin
    f:=factorial(num);
    dbms_output.put_line(f);
end;
/