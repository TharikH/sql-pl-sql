declare 
    a number:=5;
    b number:=6;
    c number;
procedure min(num1 in number,num2 in number,res out number) is
begin
    if(num1 < num2) then
        res:=num1;
    else
        res:=num2;
    end if;
end;
begin
    min(a,b,c);
    dbms_output.put_line(c);
end;
/
