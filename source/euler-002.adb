--
-- http://oeis.org/A000045
--

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Assertions; use Ada.Assertions;


procedure Euler_002 is
   
   function E002_01 (N : Natural) return Natural is
      Fib_Prev : Natural := 1;
      Fib_Next : Natural := 1;
   begin
      return Sum : Natural := 0 do
	loop
	   declare
	      Temp : Natural := Fib_Prev + Fib_Next;
	   begin
	      Fib_Prev := Fib_Next;
	      Fib_Next := Temp;
	   end;
	 
	   exit when Fib_Next > N;
	 
	   if Fib_Next rem 2 = 0 then
	      Sum := Sum + Fib_Next;
	   end if;
	end loop;
      end return;
   end E002_01;
   
   --
   -- 2|f_n <=> 3|n
   --
   function E002_02 (N : Natural) return Natural is
      Fib_A : Natural := 1;
      Fib_B : Natural := 1;
      Fib_C : Natural := 2;
   begin
      return Sum : Natural := 2 do
	loop
	   Fib_A := Fib_B + Fib_C;
	   Fib_B := Fib_A + Fib_C;
	   Fib_C := Fib_A + Fib_B;
	   
	   exit when Fib_C > N;
	   
	   Sum := Sum + Fib_C;
	end loop;
      end return;
   end E002_02;
   
begin
   Assert (E002_01(4_000_000) = E002_02(4_000_000));
   
   Put_Line (Natural'Image (E002_01(4_000_000)));
end Euler_002;
