with Kernel.Serial_Output; use Kernel.Serial_Output;

procedure Ejercicio5 is
   subtype DiaMes is Integer range 1..31;
   type AguaLitros is array (DiaMes) of integer;

   Protected Datos is
      procedure Incrementar (d: in integer);
      procedure Modificar (d: integer);
      function Leer (j: in DiaMes) return integer;
   private
      Enero : AguaLitros := (15=>20, 16=>40, 17=>30,others=>0);
   end Datos;

   task A;
   task B;
   task C;

 
   protected body Datos is
      procedure Incrementar (d: in integer) is
      begin
         for i in DiaMes loop
            Enero (i) := Enero (i) + d;
         end loop;
      end Incrementar;

      procedure Modificar (d: in integer) is
      begin
         for i in DiaMes loop
            Enero (i) := d;
         end loop;
      end Modificar;

      function Leer (j: in DiaMes) return integer is
      begin
         return Enero (j);
      end Leer;
   end Datos;

   task body A is
   begin
      Datos.Incrementar(2);
   end A;

   task body B is
   begin
      delay 0.1;
      Datos.Modificar(5);
   end B;

   task body C is
      k : integer;
   begin
      delay (0.3);
      Put_Line("lectura tareaC");
      for i in DiaMes loop
         k := Datos.Leer(i);
         Put(Integer'Image(k));
      end loop;
   end C;

begin
   Put_Line("ej5");
end Ejercicio5;