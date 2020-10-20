declare
    num integer:=5;
    factorial integer:=1;
begin
    while num>1 loop
        factorial:=factorial*num;
        num:=num-1;
    end loop;
    dbms_output.put_line('factorial is : '||factorial);
end;