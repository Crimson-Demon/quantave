function values = laguerre(n, x)
  values = zeros(n + 1, max(size(x)));
  values(1, :) = x;
  fact = factorial(n:-1:0);
  sign = (-1).^(n:-1:0);
  for i = 1:1:n
    subrange = (i:-1:0);
    bin = bincoeff(i, subrange);
    coeff = bin.*fact(subrange + 1).*sign(subrange + 1);
    poly = polyval(coeff, x);
    values(i + 1, :) = poly';
  endfor
endfunction