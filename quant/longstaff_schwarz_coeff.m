function beta = longstaff_schwarz_coeff(discount_factor, payoff, paths, basis_function, order)
  n_paths = size(paths)(1)
  n_timesteps = size(paths)(2)
  beta = zeroes(order, n_timesteps)
  next_values = payoff(paths(:, n_timesteps))
  for i = [n_timesteps - 1:-1:1]
    curr_values = paths(:, i)
    basis_values = basis_function(order, curr_values)
    M1 = (1 / n_paths) * (basis_values * basis_values')
    M2 = (1 / n_paths) * (basis_values * next_values)
    beta[:, i] = M1 \ M2
    continuation_values = beta[:, i] * basis_values
    curr_payoff = payoff(curr_values)
    next_values = (curr_payoff > continuation_values) * curr_payoff + (continuation_values > curr_payoff) * (next_values * discount_factor)
  endfor
  return beta
endfunction