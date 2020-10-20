declare
num integer;
res integer;
function naturalSum(num integer) return integer is
s integer;

begin
    s:=(num*(num + 1))/2;
    return s;
end;

begin
num:=:num;
res:=naturalSum(num);
insert into natural values(num,res);
end;
/