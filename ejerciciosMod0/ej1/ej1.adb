with Kernel.Serial_Output; use Kernel.Serial_Output;

procedure Ejercicio1 is
    type T_Vector is array (1..20) of integer:
    Mi_Tabla    : T_Vector:=(2,2,4,1,6,6,7,9,5,6,8,3,3,0,4,8,9,6,4,6);
    O_Tabla : T_Vector := (1,3,2,4,7,5,8,6,9,4,7,4,2,1,5,7,9,4,6,8);
    Tab_May : T_Vector;

begin
    Put_Line("ej 1");
    for i in 1..20 loop
        if Mi_Tabla(i) >= O_Tabla(i) then
            Tab_May(i) := Mi_Tabla(i);
        else
            Tab_May(i) := O_Tabla(i);
        end if;
    end loop;

-- Mostramos el resultado
    Put("Mayores ");
    for i in 1..20 loop
        Put(integer'Image(Tab_May(i)));
        Put(" ");
    end loop;
end Ejercicio1;;