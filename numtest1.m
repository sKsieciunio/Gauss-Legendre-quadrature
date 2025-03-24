function numtest1()

func = @(x,y) x.^8 + y.^8;
expectedResult = 4/45;

figure(1); hold on;
plotAbsError(func, 2:100, expectedResult);
legend(); hold off;

figure(2); hold on;
plotAbsError(func, 2:100, expectedResult);
plot(2./(2:100), ((2:100).^-6)./80, "DisplayName","@(h)h^-^6/80", ...
    "LineStyle","--");
legend(); hold off;

figure(3); hold on;
plotAbsError(func, 50:10:700, expectedResult);
legend(); hold off;

figure(4); hold on;
plotAbsError(func, 50:10:700, expectedResult);
plot(2./(50:10:700), ((50:10:700).^-6)./80,"DisplayName","@(h)h^-^6/80")
legend(); hold off;

end

