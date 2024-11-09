function func_t = TransformFunction(func)

jacobian = 0.5;
func_t = @(u,v) func((u+v)/2, (u-v)/2) * jacobian;

end % function

