--  Урок 8.3 "Закрытые типы", шаг 4
--
--  Начните с числа 1843. Если число чётное, разделите его на 2, иначе умножьте на 3 и прибавьте 1.
--  Повторяйте, пока не получится 1. Найдите среднее арифметическое всех чисел этой цепочки, включая
--  1843 и 1, и введите его целую часть.
--
--  Сделайте пакет с закрытым типом, в котором хранятся сумма и количество чисел, процедурой `Add` и
--  функцией, которая возвращает среднее.

--  Как запустить (из корня репозитория):
--
--     cd 08_records_and_packages/03_private_types
--     gnatmake chain_average.adb
--     ./chain_average

with Ada.Text_IO; use Ada.Text_IO;

procedure Chain_Average is
   package Tallies is
      type Tally is private;
      procedure Add (T : in out Tally; X : Integer);
      function Average (T : Tally) return Integer;
   private
      type Tally is record
         Total : Integer := 0;
         Items : Natural := 0;
      end record;
   end Tallies;

   package body Tallies is
      procedure Add (T : in out Tally; X : Integer) is
      begin
         T.Total := T.Total + X;
         T.Items := T.Items + 1;
      end Add;

      function Average (T : Tally) return Integer is
      begin
         return T.Total / T.Items;
      end Average;
   end Tallies;

   use Tallies;
   T : Tally;
   N : Positive := 1843;
begin
   Add (T, N);
   while N /= 1 loop
      if N mod 2 = 0 then
         N := N / 2;
      else
         N := 3 * N + 1;
      end if;
      Add (T, N);
   end loop;
   Put_Line (Integer'Image (Average (T)));
end Chain_Average;
