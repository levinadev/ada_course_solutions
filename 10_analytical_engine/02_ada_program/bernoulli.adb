--  Урок 10.2 "Программа на Ada", шаг 3
--
--  Измените программу урока так, чтобы она нашла числа Бернулли до B17 включительно. Выведите B17,
--  округлённое до целого через `Integer`.

with Ada.Text_IO; use Ada.Text_IO;

procedure Bernoulli is
   Count : constant Positive := 9;
   type Numbers is array (1 .. Count) of Float;
   B : Numbers;

   function Next (N : Positive) return Float is
      Sum : Float := -0.5 * Float (2 * N - 1) / Float (2 * N + 1);
      A   : Float := Float (N);
   begin
      for K in 1 .. N - 1 loop
         Sum := Sum + A * B (K);
         A := A * Float ((2 * N - 2 * K + 1) * (2 * N - 2 * K))
                / Float ((2 * K + 1) * (2 * K + 2));
      end loop;
      return -Sum;
   end Next;
begin
   for N in 1 .. Count loop
      B (N) := Next (N);
   end loop;
   Put_Line (Integer'Image (Integer (B (Count))));
end Bernoulli;
