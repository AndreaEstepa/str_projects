package body Paq_Datos is
   protected body Datos is
      procedure Incrementar (d: in integer) is
      begin
         for i in DiaMes loop
            Enero(i) := Enero(i)+d;
         end loop;
      end Incrementar;

      procedure Modificar (d: in integer) is
      begin
         for i in DiaMes loop
            Enero(i):= d;
         end loop;
      end Modificar;

      function Leer (j: in DiaMes) return integer is
      begin
         return Enero(j);
      end Leer;
   end Datos;
end Paq_Datos;