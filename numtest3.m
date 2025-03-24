function numtest3()

func1 = @(x,y) cos(10.*x);
func2 = @(x,y) abs(cos(10.*x));

figure(1); hold on;
plotAbsError(func1, 2:100);
legend(); hold off;

figure(2); hold on;
plotAbsError(func1, 50:10:700);
legend(); hold off;

figure(3); hold on;
plotAbsError(func2, 2:100);
legend(); hold off;

figure(4); hold on;
plotAbsError(func2, 50:10:700);
legend(); hold off;

end