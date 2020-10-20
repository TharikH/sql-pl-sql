declare 
us_id integer;
procedure updateSal(us_id in integer) is
begin
update staff set salary=salary*1.2 where id=us_id;
end;
begin
us_id:=:us_id;
updateSal(us_id);
end;
/