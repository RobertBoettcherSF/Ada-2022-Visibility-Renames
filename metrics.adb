pragma Ada_2022;

with Metrics.Internal;

package body Metrics is

   function To_Score (N : Natural) return Score is
   begin
      return Score (N);
   end To_Score;

   function Value (S : Score) return Natural is
   begin
      return Natural (S);
   end Value;

   function Double_Via_Private_Child (S : Score) return Score is
   begin
      return Internal.Double (S);
   end Double_Via_Private_Child;

end Metrics;
