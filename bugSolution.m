function result = myFunctionImproved(x, tolerance)
  % Use a tolerance to account for floating-point inaccuracies
  if nargin < 2
    tolerance = 1e-10; % Set default tolerance
  end

  if abs(x) < tolerance
    result = 0;  % Treat numbers close to zero as zero
  elseif x > tolerance
    result = x^2;
  else
    result = -x;
  end
end