pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Metrics;
with Metrics.Ops;

procedure Tests is
   S : Metrics.Score := Metrics.To_Score (10);
   D : constant Metrics.Ops.Delta_Value := 5;
begin
   Assert (Metrics.Value (S) = 10);
   Metrics.IO.Put_Line ("PASS package rename Metrics.IO");

   S := Metrics.Ops.Apply (S, D);
   Assert (Metrics.Value (S) = 15);
   declare
      use type Metrics.Ops.Delta_Value;
      Neg : constant Metrics.Ops.Delta_Value := -20;
   begin
      S := Metrics.Ops.Apply (S, Neg);
      Assert (Metrics.Value (S) = 0);
   end;
   Metrics.IO.Put_Line ("PASS use type + subprogram renames in Ops");

   S := Metrics.To_Score (4);
   S := Metrics.Double_Via_Private_Child (S);
   Assert (Metrics.Value (S) = 8);
   Metrics.IO.Put_Line ("PASS private child used from parent body");

   Metrics.IO.Put_Line ("All Visibility & Renames topic tests passed.");
end Tests;
