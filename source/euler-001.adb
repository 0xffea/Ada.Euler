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
