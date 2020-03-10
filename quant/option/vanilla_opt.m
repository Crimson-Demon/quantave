classdef vanilla_opt
  properties
    strike;
    ttm;
    call;
  endproperties

  methods
    function option = vanilla_opt(strike, ttm, call)
      option.strike = strike;
      option.ttm = ttm;
      option.call = call;
    endfunction
  endmethods
endclassdef