with Ada.Text_IO; use Ada.Text_IO;

procedure Euler_002 is
   
   function E002_01 (N : Natural) return Natural is
      Fib_Prev : Natural := 1;
      Fib_Next : Natural := 2;
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
   
begin
   Put_Line(Natural'Image (E002_01(4_000_000)));
end Euler_002;
