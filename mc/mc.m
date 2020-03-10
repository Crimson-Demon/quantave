classdef mc
  properties
  endproperties

  methods (Static = true)
    function mc_result = simulate(process_callback, n_paths, n_steps)
      paths = process_callback(n_paths, n_steps);
      mc_result.avg = mean(paths(:, end));
      mc_result.var = var(paths(:, end));
    endfunction
  endmethods
endclassdef