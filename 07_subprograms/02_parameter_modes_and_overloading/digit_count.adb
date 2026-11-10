--  Урок 7.2 "Режимы параметров и перегрузка", шаг 4
--
--  Сумма цифр числа 1843 равна 16. Сколько чисел от 1 до 1843 имеют такую же сумму цифр, считая
--  само 1843? Напишите функцию, которая возвращает сумму цифр числа, и программу, которая с её
--  помощью это посчитает.

--  Как запустить (из корня репозитория):
--
--     cd 07_subprograms/02_parameter_modes_and_overloading
--     gnatmake digit_count.adb
--     ./digit_count

with Ada.Text_IO; use Ada.Text_IO;

procedure Digit_Count is
   function Digit_Sum (N : Natural) return Natural is
      Rest  : Natural := N;
      Total : Natural := 0;
   begin
      while Rest > 0 loop
         Total := Total + Rest mod 10;
         Rest := Rest / 10;
      end loop;
      return Total;
   end Digit_Sum;

   Count : Natural := 0;
begin
   for I in 1 .. 1843 loop
      if Digit_Sum (I) = 16 then
         Count := Count + 1;
      end if;
   end loop;
   Put_Line (Natural'Image (Count));
end Digit_Count;
