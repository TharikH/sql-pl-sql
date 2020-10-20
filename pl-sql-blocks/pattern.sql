declare 
    num integer:=5;
begin
    for i in 1..num loop
        for j in 1..i loop
            dbms_output.put('*');
        end loop;
        dbms_output.new_line;
    end loop;
end;