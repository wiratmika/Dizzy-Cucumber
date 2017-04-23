function [f, g] = powell(x)
  d = length(x);
  f = 0;

  for i = 1:d/4
    x4i3 = x(4 * i - 3);
    x4i2 = x(4 * i - 2);
    x4i1 = x(4 * i - 1);
    x4i = x(4 * i);
    x4ii = x(4 * i - i)

    new = (x4i3 + 10 * x4i2)^2 + 5 * (x4i1 - x4i) ^ 2 + (x4i2 - x4ii) ^ 4 + 10 * (x4i3 - x4i) ^ 4;
    f = f + new;
  end

  g = zeros(d, 1);

  % for i = 1:d
    % gi = x(i);

  % end
end
