classdef black_scholes
  properties (Access = public)
    s0;
    r;
    vol;
    sde;
  endproperties

  methods (Access = public)
    function model = black_scholes(s0, r, vol)
      model.s0 = s0;
      model.r = r;
      model.vol = vol;
      model.sde = gbm(s0, r, vol);
    endfunction
  endmethods
endclassdef