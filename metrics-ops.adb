pragma Ada_2022;

package body Metrics.Ops is

   function Apply (S : Score; D : Delta_Value) return Score is
      function V (X : Score) return Natural renames Metrics.Value;
      function T (N : Natural) return Score renames Metrics.To_Score;
      Step : constant Integer := Integer (D);
      N    : constant Natural := V (S);
   begin
      if Step >= 0 then
         return T (N + Natural (Step));
      elsif Natural (-Step) >= N then
         return T (0);
      else
         return T (N - Natural (-Step));
      end if;
   end Apply;

end Metrics.Ops;
