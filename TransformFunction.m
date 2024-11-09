function func_t = TransformFunction(func)
% Zadanie 35
% Hubert Błonowski, 333181
%
% Funkcja transformuje 

jacobian = 0.5;
func_t = @(u,v) func((v+u)/2, (v-u)/2) * jacobian;

end % function

