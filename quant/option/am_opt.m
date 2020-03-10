classdef am_opt < euro_opt
  properties
  endproperties

  methods
    function option = am_opt(strike, ttm, call)
      option.strike = strike;
      option.ttm = ttm;
      option.call = call;
    endfunction

    function val = payoff(opt, s, c)
      val = max(opt.payoff(s), c);
    endfunction
  endmethods
endclassdef