declare
num integer;
r integer;
function reversed(num integer) return integer is
    rev integer:=0;
    temp integer;
begin
    temp:=num;
    while(temp ~=0) loop
    rev:=(rev*10) + mod(temp,10);
    temp:=temp/10;
    end loop;
    return rev;
end;
begin
    num:=1234;
    r:=reversed(num);
    dbms_output.put_line('reversed num is '|| r);
    if(r = num)then
    dbms_output.put_line('pallindrome');
    else
    dbms_output.put_line('not pallindrome');
    end if;
end;
/