--  Parent package: private type, package rename, private-child bridge.
pragma Ada_2022;

with Ada.Text_IO;

package Metrics is

   type Score is private;

   function To_Score (N : Natural) return Score;
   function Value (S : Score) return Natural;
   function Double_Via_Private_Child (S : Score) return Score;

   package IO renames Ada.Text_IO;

private

   type Score is new Natural;

end Metrics;
