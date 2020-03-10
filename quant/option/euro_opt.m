classdef euro_opt < vanilla_opt
  properties
  endproperties

  methods
    function option = euro_opt(strike, ttm, call)
      option.strike = strike;
      option.ttm = ttm;
      option.call = call;
    endfunction

    function val = payoff(opt, s)
      val = opt.call * max(s - opt.strike, 0) + (1 - opt.call) * max(opt.strike - s, 0); 
    endfunction
  endmethods
endclassdef