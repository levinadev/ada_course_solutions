--  Урок 9.3 "Предикаты типов", шаг 4
--
--  Год високосный, если он делится на 4 и не делится на 100 или если он делится на 400. Объявите
--  подтип `Leap_Year` от `Positive` с таким `Dynamic_Predicate`. Посчитайте, сколько високосных лет
--  с 1815 года, когда родилась Ада Лавлейс, по 2026 год включительно.

with Ada.Text_IO; use Ada.Text_IO;

procedure Leap_Count is
   subtype Leap_Year is Positive
     with Dynamic_Predicate =>
       (Leap_Year mod 4 = 0 and Leap_Year mod 100 /= 0) or Leap_Year mod 400 = 0;
   Count : Natural := 0;
begin
   for Y in 1815 .. 2026 loop
      if Y in Leap_Year then
         Count := Count + 1;
      end if;
   end loop;
   Put_Line (Natural'Image (Count));
end Leap_Count;
