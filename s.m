x = -1:0.1:1;
y = -1:0.1:1;

f = @(x,y) abs(x);
ft = @(u,v) f((u+v)/2, (u-v)/2);

[X,Y] = meshgrid(x,y);
Z = f(X,Y);
Zt = ft(X,Y);

figure(1);
surf(X,Y,Z);
figure(2)
surf(X,Y,Zt);