classdef euro_opt < vanilla_opt
  properties
  endproperties

  methods
    function option = euro_opt(strike, ttm, call)
      option.strike = strike;
      option.ttm = ttm;
      option.call = call;
    endfunction

    function val = payoff(s)
      val = call * max(s - strike, 0) + (1 - call) * max(strike - s, 0); 
    endfunction
  endmethods
endclassdef