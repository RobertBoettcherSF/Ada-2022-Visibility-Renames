pragma Ada_2022;

package body Metrics.Internal is

   function Double (S : Score) return Score is
   begin
      return To_Score (Value (S) * 2);
   end Double;

end Metrics.Internal;
