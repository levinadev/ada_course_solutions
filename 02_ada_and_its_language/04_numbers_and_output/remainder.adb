--  Урок 2.4 "Числа и вывод", шаг 3
--
--  Напишите программу, которая выводит остаток от деления 2 в степени 20 на 1843, год выхода
--  примечаний Ады Лавлейс.

--  Как запустить в Linux (из корня репозитория):
--
--     cd 02_ada_and_its_language/04_numbers_and_output
--     gnatmake remainder.adb
--     ./remainder
--
--  В Windows и macOS скопируйте файл в папку проекта Alire из урока 2.2 (ada_course)
--  и запустите там:
--
--     alr exec -- gnatmake remainder.adb
--     ./remainder

with Ada.Text_IO; use Ada.Text_IO;

procedure Remainder is
begin
   Put_Line (Integer'Image (2 ** 20 mod 1843));
end Remainder;
