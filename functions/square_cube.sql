declare 
num float :=27;
type typearr_2 is varray(2) of float;
res typearr_2;
function sqube(num float) return typearr_2 is
square_cube typearr_2;
begin
    square_cube:=typearr_2(0,0);
    square_cube(1):=power(num,0.5);
    square_cube(2):=power(num,1/3);
    return square_cube;
end;
begin
res:=sqube(num);
insert into square_cube values(num,res(1),res(2));
end;
/