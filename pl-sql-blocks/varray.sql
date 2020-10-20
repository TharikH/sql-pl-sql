declare 
    type sub is varray(5) of number;
    sub1 sub;
    sub2 sub;
    res sub;
    tot integer;
begin
    sub1:=sub(5,6,7,8,9);
    sub2:=sub(8,4,3,7,10);
    res:=sub(0,0,0,0,0);
    tot:=sub1.count;
    for i in 1..tot loop
        res(i):=sub1(i) + sub2(i);
        dbms_output.put_line('mark of student'||i||' is : '||res(i));
    end loop;
end;