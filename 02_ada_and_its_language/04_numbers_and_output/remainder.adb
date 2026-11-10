--  Урок 2.4 "Числа и вывод", шаг 3
--
--  Напишите программу, которая выводит остаток от деления 2 в степени 20 на 1843, год выхода
--  примечаний Ады Лавлейс.

with Ada.Text_IO; use Ada.Text_IO;

procedure Remainder is
begin
   Put_Line (Integer'Image (2 ** 20 mod 1843));
end Remainder;
