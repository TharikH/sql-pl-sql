declare
num integer;
res integer;
function armstrong(num integer) return integer is
s integer:=0;
len integer;
temp integer;
begin
    len:=length(to_char(num));
    temp:=num;
    while(temp ~=0) loop
    s:=s+(mod(temp,10) ** len);
    temp:=floor(temp/10);
    end loop;
    return s;
end;
begin
    num:=153;
    res:= armstrong(num);
    if(num = res) then
    dbms_output.put_line('armstrong');
    else
    dbms_output.put_line('not armstrong ' || res);
    end if;
end;
/