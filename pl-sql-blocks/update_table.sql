declare 
cust_id integer:=1;
val float;
begin
select emi into val from customer where id=cust_id;
if(val ~= 0 and val is not null)then
update customer set emi=val/2 where id=cust_id;
else
dbms_output.put_line('not poss');
end if;

end;