function testuniterror(func, n1Vec, n2Vec, expectedRes)

fprintf("Test dla funkcji: %s\n", func2str(func));

for i = 1:length(n1Vec)
    fprintf("\tn1 = %3d, n2 = %3d:\t\tS = %.15f\n", n1Vec(i), n2Vec(i), ...
        abs(P1Z35_HBL_integral(func, n1Vec(i), n2Vec(i)) - expectedRes));
end

fprintf("\n");

end

