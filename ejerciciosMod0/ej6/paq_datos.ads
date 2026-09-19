package Paq_Datos is
   subtype DiaMes is Integer range 1..31;
   type AguaLitros is array ( DiaMes) of integer;
   
   Protected Datos is
      procedure Incrementar (d: in integer);
      procedure Modificar (d: integer);
      function Leer (j: in DiaMes) return integer;
   private
      Enero: AguaLitros := (15=>20, 16=>40, 17=>30, others=>0);
   end Datos;
end Paq_Datos;