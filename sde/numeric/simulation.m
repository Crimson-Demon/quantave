classdef simulation
  properties
  endproperties
  methods (Static = true)
    function paths = simulate(sde, dt, n_paths, n_timesteps, scheme)
      switch(scheme)
        case 'euler'
          paths = euler_maruyama(sde, dt, n_paths, n_timesteps)
        case 'milstein'
          paths = milstein(sde, dt, n_paths, n_timesteps)
    endfunction
  endmethods
endclassdef
