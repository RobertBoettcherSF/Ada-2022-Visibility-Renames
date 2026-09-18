--  Private child: not visible to ordinary clients of Metrics.
pragma Ada_2022;

private package Metrics.Internal is

   function Double (S : Score) return Score;

end Metrics.Internal;
