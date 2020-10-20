declare 
    num integer:=5;
    f integer:=0;
begin
    for i in 2..(num/2) loop
        if (mod(num,i) = 0) then
        f:=1;
        end if;
    end loop;
    if (num = 1) then
        dbms_output.put_line('neither');
    else
        if (f=1) then 
            dbms_output.put_line('not prime');
        else
            dbms_output.put_line('prime');
        end if;
    end if;
end;