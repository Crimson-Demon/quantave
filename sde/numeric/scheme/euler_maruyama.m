function paths = euler_maruyama(sde, dt, n_paths, n_timesteps)
  paths = zeros(n_paths, n_timesteps + 1);
  paths(:, 1) = ones(n_paths, 1) * sde.x0;
  x_prev = prev(:, 1);
  dW = sqrt(dt) * randn(n_paths, n_timesteps);
  for i = [1:1:n_timesteps]
    x_curr = x_prev + sde.drift(x_prev) * dt + sde.diffusion(x_prev) .* dW(:, i);
    paths(:, i + 1) = x_curr;
    x_prev = x_curr;
  endfor
endfunction