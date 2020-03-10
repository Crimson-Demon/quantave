classdef solver
  methods (Static = true)
    function mesh = solve(pde, mesh_x, mesh_y, dx, dy, fdm)
      switch (type)
        case 'forward euler'
          mesh = forward_euler(pde, mesh_x, mesh_y, dx, dy);
        case 'backward euler'
          mesh = backward_euler(pde, mesh_x, mesh_y, dx, dy);
        case 'crank nicolson'
          mesh = backward_euler(pde, mesh_x, mesh_y, dx, dy);
        case 'adi'
          mesh = backward_euler(pde, mesh_x, mesh_y, dx, dy);
        otherwise
          error(sprintf('No such fdm method: %s\n', fdm));
      endswitch
    endfunction
  endmethods
endclassdef
