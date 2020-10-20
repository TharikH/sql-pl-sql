declare
    num integer:=0;
begin
    for i in 0..10 loop
        dbms_output.put_line('3 x '||i||' = '||num);
        num:=num+3;
    end loop;
end;