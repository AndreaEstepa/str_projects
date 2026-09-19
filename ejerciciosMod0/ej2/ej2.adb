with Kernel.Serial_Output; use Kernel.Serial_Output;

procedure Ejercicio2 is
    subtype DiaMes is Integer range 1..31;
    type AguaLitros is array(diaMes) of integer;

    Enero: AguaLitros:=(15=>20, 16=>40, 17=>30, others=>0);
    Febrero: AguaLitros := (10=>35, 11=>28,others=>0);
    Marzo: AguaLitros:= (5=>26,  6=>32,others=>0);

    c_mas30, c_25_29, c_menos25 : integer := 0;

procedure Analizar(Mes: AguaLitros; DiasMax: Integer) is
begin
    for i in 1..DiasMax loop
        if Mes(i) >= 30 then
            c_mas30 := c_mas30+1;
        elsif Mes(i) >= 25 and Mes(i) <= 29 then
            c_25_29:= c_25_29+1;
        elsif Mes(i)>0 and Mes(i) < 25 then
            c_menos25 := c_menos25+1;
        end if;
    end loop;
end Analizar;

begin
    Put_Line("ej2");
    Analizar (Enero, 31);
    Analizar (Febrero, 28);
    Analizar (Marzo, 31);
    Put("Dias con más de 30L: ");
    Put_Line(integer'Image(c_mas30));

    Put("Dias con entre 25 y 29L: ");
    Put_Line(integer'Image(c_25_29));

    Put("Dias con menos de 25L: ");
    Put_Line(integer'Image(c_menos25));
end Ejercicio2;