--  Урок 5.2 "Перечисления", шаг 4
--
--  Сколько дней с начала марта по конец ноября в невисокосном году? Объявите перечисление месяцев
--  от `Jan` до `Dec` и напишите программу, которая это посчитает.

--  Как запустить в Linux (из корня репозитория):
--
--     cd 05_own_types/02_enumerations
--     gnatmake days.adb
--     ./days
--
--  В Windows и macOS скопируйте файл в папку проекта Alire из урока 2.2 (ada_course)
--  и запустите там:
--
--     alr exec -- gnatmake days.adb
--     ./days

with Ada.Text_IO; use Ada.Text_IO;

procedure Days is
   type Month is (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);
   Result : Natural := 0;
begin
   for M in Mar .. Nov loop
      case M is
         when Apr | Jun | Sep | Nov => Result := Result + 30;
         when others                => Result := Result + 31;
      end case;
   end loop;
   Put_Line (Natural'Image (Result));
end Days;
