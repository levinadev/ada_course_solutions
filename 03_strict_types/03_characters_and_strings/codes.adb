--  Урок 3.3 "Символы и строки", шаг 4
--
--  Сложите коды первой и последней буквы строки `"Lovelace"` и умножьте сумму на длину этой строки.
--  Напишите программу, которая выводит результат.

with Ada.Text_IO; use Ada.Text_IO;

procedure Codes is
   Name : constant String := "Lovelace";
begin
   Put_Line (Integer'Image ((Character'Pos (Name (1)) + Character'Pos (Name (Name'Length))) * Name'Length));
end Codes;
