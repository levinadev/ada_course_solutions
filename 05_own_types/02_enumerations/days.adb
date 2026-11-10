--  Урок 5.2 "Перечисления", шаг 4
--
--  Сколько дней с начала марта по конец ноября в невисокосном году? Объявите перечисление месяцев
--  от `Jan` до `Dec` и напишите программу, которая это посчитает.

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
