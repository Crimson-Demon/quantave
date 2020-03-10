classdef mc_result
  properties
    avg;
    var;
  endproperties

  methods
    function result = mc_result(avg, var)
      result.avg = avg;
      result.var = var;
    endfunction

    function disp(result)
      printf("MC: { Avg: %f, Var: %f }", result.avg, result.var);
    endfunction

    function plot(alpha)

    endfunction
  endmethods
endclassdef
