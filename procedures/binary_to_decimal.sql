declare
    num number;
    res number;
    temp number;
    pow number;
procedure convertIntoDecimal(num in number,res out number) is
begin
    temp:=num;
    pow:=1;
    res:=0;
    while(temp ~= 0) loop
    res:=res+mod(temp,10) * pow;
    pow:=pow*2;
    temp:=floor(temp/10);
    end loop;
end;
begin
num:=:num;
convertIntoDecimal(num,res);
dbms_output.put_line('decimal is : '||res);
end;
/