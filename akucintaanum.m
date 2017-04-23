% This code will run tests according to our luvly Anoem tugas 2 spec
warning('off'); % Because we can't afford proper MATLAB goddamit

function [xi] = generateX(i)
  if (mod(i, 2) == 0)
    xi = -pi / 2;
  else
    xi = pi / 2;
  end
end

function [x] = michalewiczGenerator(t)
  n = 8 ^ t;
  x = zeros(n, 1);

  for i = 1:n
    x(i) = generateX(i);
  end
end

tol = 10 ^ -4;
% out = lbfgs(@(x) michalewicz(x), michalewiczGenerator(1), 'StopTol', tol)
out = tn(@(x) michalewicz(x), michalewiczGenerator(1), 'CGTolType', 'fixed', 'CGTol', tol, 'CGSolver', 'pcg')

% INSTRUKSI:
% 1. Kalo mau ganti panjang n-nya, ganti parameter michalewiczGenerator
%    1, 2, 3, 4, 5
% 2. Kalo mau ganti tolerance-nya, ganti pangkat variabel tol
%    4, 6, 8, 10, 12
