with Kernel.Serial_Output; use Kernel.Serial_Output;
with Paq_Datos; use Paq_Datos;

package body Paq_Tareas is
   task body T_Incrementa is
   begin
      Paq_Datos.Datos.Incrementar(2);
   end T_Incrementa;

   task body T_Modifica is
   begin
      delay 0.1;
      Paq_Datos.Datos.Modificar(10);
   end T_Modifica;

   task body T_Lee is
      k : integer;
   begin
      delay 0.3;
      Put_Line("--- Lectura desde T_Lee en Paq_Tareas ---");
      for i in Paq_Datos.DiaMes loop
         k := Paq_Datos.Datos.Leer(i);
         Put(Integer'Image(k));
      end loop;
      New_Line;
   end T_Lee;
begin
   Put_Line("ini. del paquete de tareas");
end Paq_Tareas;