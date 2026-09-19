with Kernel.Serial_Output; use Kernel.Serial_Output;

procedure Lanzatareas is
    type V50 is array (1..50) of Integer;
    Aux_V : V50 := (50=>1, 49=>2, others=>10);

    task T_Burbuja;
    task T_Suma;
    task T_Maximo;

    task body T_Burbuja is
        Aux : Integer;
        V : V50 := Aux_V;
    begin
        for i in V'Range loop
            for j in i+1 .. V'Last loop
                if V(i) > V(j) then
                    Aux := V(i);
                    V(i) := V(j);
                    V(j) := Aux;
                end if;
            end loop;
        end loop;
    end T_Burbuja;

    task body T_Suma is
        Suma : Integer := 0;
    begin
        for i in Aux_V'Range loop
            Suma := Suma+Aux_V(i);
        end loop;
        Put("Suma total: ");
        Put_Line(Integer'Image(Suma));
    end T_Suma;

    task body T_Maximo is
        Max : Integer := Aux_V(1);
    begin
        for i in Aux_V'Range loop
            if Aux_V(i) > Max then
                Max:=Aux_V(i);
            end if;
        end loop;
        Put("Valor Maximo: ");
        Put_Line(Integer'Image(Max));
    end T_Maximo;
     
begin
    Put_Line("ej4");
    delay(1.0); --damos tiempo a que terminen
end Lanzatareas;