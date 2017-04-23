function [f, g] = powell(x)
  d = length(x);
  f = 0;

  for i = 1:d/4
    x4i3 = x(4 * i - 3);
    x4i2 = x(4 * i - 2);
    x4i1 = x(4 * i - 1);
    x4i = x(4 * i);

    new = (x4i3 + 10 * x4i2)^2 + 5 * (x4i1 - x4i) ^ 2 + (x4i2 - x4i1) ^ 4 + 10 * (x4i3 - x4i) ^ 4;
    f = f + new;
  end

  g = zeros(d, 1);

  for j = 1:d/4
    x4i3 = x(4 * i - 3);
    x4i2 = x(4 * i - 2);
    x4i1 = x(4 * i - 1);
    x4i = x(4 * i);

    g(4 * j) = -10 * (x4i1 - x4i) - 40 * (x4i3 - x4i)^3;
    g(4 * j - 1) = 10 * (x4i1 - x4i) - 8 * (x4i2 - 2 * x4i1)^3;
    g(4 * j - 2) = 4 * (x4i2 - 2 * x4i1)^3 + 20 * (10 * x4i2 + x4i3);
    g(4 * j - 3) = 40 * (x4i3 - x4i)^3 + 2 *(x4i3 + 10 * x4i2);
  end
end
