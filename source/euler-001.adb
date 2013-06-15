--
-- Multiples of 3 and 5
--
-- If we list all the natural numbers below 10 that are multiples
-- of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
--
-- Find the sum of all the multiples of 3 or 5 below 1000.
--
--
-- RAYMOND T. BOUTE: The Euclidean Definition of the Functions div
-- and mod. ACM Transactions on Programming Languages and Systems
-- 14.2 (1992):127-144
-- DAAN LEIJEN: Division and Modulus for Computer Scientists.
-- BOYKO B. BANTCHEV: On the Definition of Integer Division and Modulus
-- in Programming Languages. Mathematics and Education (2006):223-229
--

with Ada.Text_IO;
with Ada.Assertions;

procedure Euler_001 is
   use Ada.Text_IO;
   use Ada.Assertions;
   
   function E001_01 (N : Natural) return Natural is
   begin
      return Sum : Natural := 0 do
	for I in 1 .. (N-1) loop
	   if (I rem 3 = 0) then
	      Sum := Sum + I;
	   elsif (I rem 5 = 0) then
	      Sum := Sum + I;
	   end if;
	end loop;
      end return;
   end E001_01;

   function E001_02 (N : Natural) return Natural is
      Sum : Natural := 0;
   begin
      declare
	 I : Natural := 0;
      begin
	 loop
	    I := I + 3;
	    exit when I >= N;
	    Sum := Sum + I;
	 end loop;
      end;
	
      declare
	 I : Natural := 0;
      begin
	 loop
	    I := I + 5;
	    exit when I >= N;
	    Sum := Sum + I;
	 end loop;
      end;
      return Sum;
   end E001_02;
   
begin
   Assert(23 = E001_01(10));
   Assert(23 = E001_02(10));
   
   Put_Line(Natural'Image (E001_01(1_000)));
end Euler_001;
