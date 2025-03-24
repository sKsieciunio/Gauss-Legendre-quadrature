function numtest2()

func = @(x,y) abs(x) + abs(y);
expectedResult = 4/3;

figure(1); hold on;
plotAbsError(func, 2:100, expectedResult);
legend(); hold off;

figure(2); hold on;
plotAbsError(func, 2:100, expectedResult);
plot(2./(2:100), ((2:100).^-6)./0.01, "DisplayName","@(h)100*h^-^6");
plot(2./(2:100), ((2:100).^-2)./10, "DisplayName","@(h)h^-^2/10", ...
    "LineStyle","--");
legend(); hold off;

figure(3); hold on;
plotAbsError(func, 500:100:4000, expectedResult);
legend(); hold off;

end

