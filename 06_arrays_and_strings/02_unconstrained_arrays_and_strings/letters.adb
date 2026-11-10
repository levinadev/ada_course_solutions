--  Урок 6.2 "Массивы без размера и строки", шаг 4
--
--  Сколько раз встречается самая частая буква в строке `"the analytical engine of charles
--  babbage"`? Пробелы не считайте. Напишите программу, которая это посчитает.

--  Как запустить (из корня репозитория):
--
--     cd 06_arrays_and_strings/02_unconstrained_arrays_and_strings
--     gnatmake letters.adb
--     ./letters

with Ada.Text_IO; use Ada.Text_IO;

procedure Letters is
   type Counter is array (Character) of Natural;
   Text   : constant String := "the analytical engine of charles babbage";
   Counts : Counter := (others => 0);
   Best   : Natural := 0;
begin
   for I in Text'Range loop
      if Text (I) /= ' ' then
         Counts (Text (I)) := Counts (Text (I)) + 1;
      end if;
   end loop;
   for C in Counts'Range loop
      if Counts (C) > Best then
         Best := Counts (C);
      end if;
   end loop;
   Put_Line (Natural'Image (Best));
end Letters;
