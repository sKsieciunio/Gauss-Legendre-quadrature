function res = CalculateIntegral35(func, n)
% n - number of intervals

func_t = TransformFunction(func);

S = 0;

x = linspace(-1, 1, n+1);
y = linspace(-1, 1, n+1);

for i = 1:n % iterating over x
    for j = 1:n % iterating over y
        S = S + GaussLegendre3p(func_t, x(i), y(j), x(i+1), y(j+1));
    end
end

res = S;

end % function

