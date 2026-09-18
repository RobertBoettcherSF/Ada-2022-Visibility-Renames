--  Public child: renaming + use type for a distinct integer type.
pragma Ada_2022;

package Metrics.Ops is

   type Delta_Value is new Integer;

   function Apply (S : Score; D : Delta_Value) return Score;
   --  Adds D using a local rename of Value/To_Score.

end Metrics.Ops;
