with Ada.Text_IO; use Ada.Text_IO;
with Ada.Assertions; use Ada.Assertions;
with Ada.Real_Time; use Ada.Real_Time;


procedure Euler_001 is
   
   function E001_01 (N : Natural) return Natural is
      Sum : Natural := 0;
   begin
      for I in 1 .. (N-1) loop
	 if I mod 3 = 0 then
	    Sum := Sum + I;
	 elsif I mod 5 = 0 then
	    Sum := Sum + I;
	 end if;
      end loop;
      return Sum;
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
   
   declare
      Sum : Natural;
      Start_Time : Time := Clock;
      End_Time : Time;
   begin
      Sum := E001_01(100_000);
      End_Time := Clock;
      Put_Line(Duration'Image (To_Duration(End_Time - Start_Time)));
   end;
   
   declare
      Sum : Natural;
      Start_Time : Time := Clock;
      End_Time : Time;
   begin
      Sum := E001_02(100_000);
      End_Time := Clock;
      Put_Line(Duration'Image (To_Duration(End_Time - Start_Time)));
   end;
   
   Put_Line(Natural'Image (E001_01(10)));
end Euler_001;
