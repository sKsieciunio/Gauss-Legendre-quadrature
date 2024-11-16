function numtest1()

func = @(x,y) x.^8 + y.^8;
expectedResult = 4/45;

% func = @(x,y) (x+0.5).^9 + (y+0.5).^9;
% expectedResult = 3.1453125;

% func = @(x,y) abs(x) + abs(y);
% expectedResult = 4/3;

% func = @(x,y) abs(cos(10.*x));
% expectedResult = 1.275463783544616;

% func = @(x,y) exp(x + y.^2);
% expectedResult = 2.599030337620915;

% func = @(x,y) 1./(x.^2 + 0.01);
% expectedResult = 49.614865938466870

% func = @(x,y) cos(x) + sin(2.*y);
% expectedResult = 1.838790776527495;

figure(1); hold on;
plotAbsError(func, 2:100, expectedResult);
legend(); hold off;

figure(2); hold on;
plotAbsError(func, 2:100, expectedResult);
plot(2./(2:100), ((2:100).^-6)./80, "DisplayName","@(h)h^-^6/80");
legend(); hold off;

figure(3); hold on;
plotAbsError(func, 50:10:700, expectedResult);
legend(); hold off;

figure(4); hold on;
plotAbsError(func, 50:10:700, expectedResult);
plot(2./(50:10:700), ((50:10:700).^-6)./80,"DisplayName","@(h)h^-^6/80")
legend(); hold off;

end

