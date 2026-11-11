--  Урок 3.2 "Целые и дробные числа", шаг 4
--
--  Поезд проехал 1843 км за 9 часов. Напишите программу, которая выводит его среднюю скорость в
--  км/ч, округлённую до целого так, как округляет Ada.

--  Как запустить в Linux (из корня репозитория):
--
--     cd 03_strict_types/02_integers_and_floats
--     gnatmake speed.adb
--     ./speed
--
--  В Windows и macOS скопируйте файл в папку проекта Alire из урока 2.2 (ada_course)
--  и запустите там:
--
--     alr exec -- gnatmake speed.adb
--     ./speed

with Ada.Text_IO; use Ada.Text_IO;

procedure Speed is
   Km    : constant Integer := 1843;
   Hours : constant Integer := 9;
begin
   Put_Line (Integer'Image (Integer (Float (Km) / Float (Hours))));
end Speed;
