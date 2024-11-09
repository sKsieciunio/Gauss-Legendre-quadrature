function res = CalculateIntegral35(func, n1, n2)
% Zadanie 35
% Hubert Błonowski, 333181
%
% Funkcja obliczająca całkę z funkcji func(x,y) na obszarze 
% D = {(x,y): |x| + |y| <= 1} przez transformacje na kwadrat 
% [-1, 1] x [-1, 1] i zastosowanie złożonych 3-punktowych kwadratur
% Gaussa-Legendre'a ze względu na każdą zmienną
% WEJŚCIE
%   func - uchwyt do funkcji podcałkowej
%   n1   - liczba podprzedziałów względem prostej x = y
%   n2   - liczba podprzedziałow względem prostej x = -y
% WYJŚCIE
%   res  - wynik całkowania funkcji

% zmiana obszaru całkowania z D na kwadrat [-1, 1] x [-1, 1] korzystając z
% podstawienia x = (u - v) / 2 oraz y = (u + v) / 2
jacobian = 0.5;
func_t = @(u, v)  func((u - v) / 2, (u + v) / 2) * jacobian;

% generowanie podprzedziałów
x = linspace(-1, 1, n1 + 1);
y = linspace(-1, 1, n2 + 1);

S = 0;

for i = 1:n1 % iterating over x
    for j = 1:n2 % iterating over y
        S = S + GaussLegendre3p(func_t, x(i), y(j), x(i+1), y(j+1));
    end
end

res = S;

end % function

