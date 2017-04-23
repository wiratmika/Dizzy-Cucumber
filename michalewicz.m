function [f, g] = michalewicz(x)
  d = length(x);
  sum = 0;

  for i = 1:d
    xi = x(i);
    new = sin(xi) * sin(i * xi^2 / pi)^20;
    sum = sum + new;
  end

  f = -sum;
  g = zeros(d, 1);

  % Derived from http://www.wolframalpha.com/input/?i=d+(sin(x)*sin((x%5E2)%2Fpi)%5E20)
  for j = 1:d
    gj = x(j);
    g(j, 1) = -(40 * j * gj * cos(j * gj^2 / pi) * sin(gj) * sin(j * gj^2 / pi)^19) / pi - cos(gj) * sin(j * gj^2 / pi)^20;
  end
end
