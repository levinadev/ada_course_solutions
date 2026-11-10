--  Урок 4.2 "Циклы", шаг 4
--
--  Сколько чисел от 1 до 1843 делятся на 7, но не делятся на 3? Напишите программу, которая это
--  посчитает.

--  Как запустить (из корня репозитория):
--
--     cd 04_branches_and_loops/02_loops
--     gnatmake count.adb
--     ./count

with Ada.Text_IO; use Ada.Text_IO;

procedure Count is
   Result : Integer := 0;
begin
   for I in 1 .. 1843 loop
      if I mod 7 = 0 and I mod 3 /= 0 then
         Result := Result + 1;
      end if;
   end loop;
   Put_Line (Integer'Image (Result));
end Count;
