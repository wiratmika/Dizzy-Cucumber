function [xi] = generateX(i)
  if (mod(i, 2) == 0)
    xi = -pi / 2
  else
    xi = pi / 2
  end
end

function [f, g] = michalewicz(x)
  f = -sum(sin(x) * sin((x^2) / pi)^20)
end

mikalewiks([generateX(1), generateX(2), generateX(3), generateX(4)])
