--  Урок 3.2 "Целые и дробные числа", шаг 4
--
--  Поезд проехал 1843 км за 9 часов. Напишите программу, которая выводит его среднюю скорость в
--  км/ч, округлённую до целого так, как округляет Ada.

with Ada.Text_IO; use Ada.Text_IO;

procedure Speed is
   Km    : constant Integer := 1843;
   Hours : constant Integer := 9;
begin
   Put_Line (Integer'Image (Integer (Float (Km) / Float (Hours))));
end Speed;
