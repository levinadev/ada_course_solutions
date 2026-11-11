--  Урок 9.1 "Исключения", шаг 4
--
--  Объявите тип `type Big is range 0 .. 1843000000;`. Считайте в переменных этого типа числа
--  Фибоначчи 1, 1, 2, 3, 5, 8 и так далее, каждое следующее равно сумме двух предыдущих. Когда
--  очередное число не поместится в тип, возникнет `Constraint_Error`. Перехватите его и выведите,
--  сколько чисел поместилось, считая обе первые единицы.

--  Как запустить в Linux (из корня репозитория):
--
--     cd 09_exceptions_and_contracts/01_exceptions
--     gnatmake fib_count.adb
--     ./fib_count
--
--  В Windows и macOS скопируйте файл в папку проекта Alire из урока 2.2 (ada_course)
--  и запустите там:
--
--     alr exec -- gnatmake fib_count.adb
--     ./fib_count

with Ada.Text_IO; use Ada.Text_IO;

procedure Fib_Count is
   type Big is range 0 .. 1843000000;
   A, B : Big := 1;
   C : Big;
   Count : Natural := 2;
begin
   loop
      C := A + B;
      Count := Count + 1;
      A := B;
      B := C;
   end loop;
exception
   when Constraint_Error =>
      Put_Line (Natural'Image (Count));
end Fib_Count;
