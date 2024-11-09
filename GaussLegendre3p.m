function res = GaussLegendre3p(func, x1, y1, x2, y2)
% 3 point Gauss Legendre on [x1, x2] x [y1, y2] area

[w,x] = gl3wx;

nodes_x = arrayfun(@(x) ((x2-x1)/2)*x + (x2+x1)/2, x);
nodes_y = arrayfun(@(x) ((y2-y1)/2)*x + (y2+y1)/2, x);

weightsMatrix = w*w';
funcResMatrix = func(nodes_x', nodes_y);

res = sum(weightsMatrix .* funcResMatrix, "all") * ...
    ((x2 - x1) * (y2 - y1) / 4);

end % function

