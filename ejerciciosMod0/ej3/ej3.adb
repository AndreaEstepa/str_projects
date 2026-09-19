with Kernel.Serial_Output; use Kernel.Serial_Output;

procedure Ejercicio3 is
    subtype  DiaMes is Integer range 1..31;
    type AguaLitros is array ( DiaMes) of integer;
    Enero :AguaLitros := (15=>20,16=>40, 17=>30, others=>5);
     
    function Media_Mes(V : AguaLitros) return Float is
        Suma: Integer:= 0;
    begin
        for i in V'Range loop
            Suma := Suma +V(i);
        end loop;
        return Float(Suma) /Float(V'Length);
    end Media_Mes;

    procedure Filtrar_Rango(V : AguaLitros; X, Y : Integer; Dias : out Integer; Media : out Float) is
        Suma : Integer := 0;
    begin
        Dias := 0;
        for i in V'Range loop
            if V(i) >= X and V(i) <= Y then
                Dias := Dias + 1;
                Suma := Suma + V(i);
            end if;
        end loop;
        if Dias > 0 then
            Media := Float(Suma) /Float(Dias);
        else
            Media := 0.0;
        end if;
    end Filtrar_Rango;

    --bubble short
    procedure Burbuja(V : in out AguaLitros) is
        Aux : Integer;
    begin
        for i in V'Range loop
            for j in i+1 .. V'Last loop
                if V(i) > V(j) then
                    Aux:= V(i);
                    V(i):= V(j);
                    V(j) := Aux;
                end if;
            end loop;
        end loop;
    end Burbuja;

    D_Rango : Integer;
    M_Rango : Float;
begin
    Put_Line("ej3");
    Put("Media total: ");
    Put_Line(Float'Image(Media_Mes(Enero)));
    
    Filtrar_Rango(Enero, 10, 35, D_Rango, M_Rango);
    Put("Dias en rango (10-35) ");
    Put_Line(integer'Image(D_Rango));
end Ejercicio3;