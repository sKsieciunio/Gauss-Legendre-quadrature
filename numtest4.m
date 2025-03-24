function numtest4()

figure(1); hold on;
plotAbsError(@func, 2:100);
legend(); hold off;

end

function z = func(x, y)
    r2 = x.^2 + y.^2;
    z = zeros(size(r2));
    
    nonzeroMask = r2 > 0;
    r = sqrt(r2(nonzeroMask));
    z(nonzeroMask) = r2(nonzeroMask) .* sin(1 ./ r);
end
