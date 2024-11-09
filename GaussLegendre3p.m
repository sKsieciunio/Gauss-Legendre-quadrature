function res = GaussLegendre3p(func, x1, y1, x2, y2)
% Zadanie 35
% Hubert Błonowski, 333181
%
% Funkcja oblicza całkę z funkcji func(x,y) na obszarze [x1, x2] x [y1, y2]
% za pomocą pojedyńczej 3-punktowej kwadratury Gaussa-Legendre'a
% WEJŚCIE
%   func           - uchwyt do funkcji podcałkowej
%   x1, x2, y1, y2 - współrzędne opisujące obszar [x1, x2] x [y1, y2],
%                    argumenty powinny spełniać warunki: x1 < x2, y1 < y2
%                    (w przeciwnym wypadku UB)
% WYJSCIE
%   res - wynik całkowania funkcji

[w,x] = gl3wn;

% zmiana przedziału całkowania z [-1, 1] x [-1, 1] na [x1, x2] x [y1, y2]
nodes_x = ((x + 1) * (x2 - x1) / 2) + x1;
nodes_y = ((x + 1) * (y2 - y1) / 2) + y1;

% macierz współczynników weightsMatrix[i][j] = w[i] * w[j]
weightsMatrix = w*w';

% macierz wartości funkcji funcMatrix[i][j] = func(nodes_x[i], nodes_y[j])
funcMatrix = func(nodes_x', nodes_y);

res = sum(weightsMatrix .* funcMatrix, "all") * ...
    ((x2 - x1) * (y2 - y1) / 4);

end % function

