function testunit(func, n1Vec, n2Vec, expectedRes)

fprintf("Test dla funkcji: %s\n", func2str(func));
fprintf("\tOczekiwany rezultat: %s\n", expectedRes);

for i = 1:length(n1Vec)
    fprintf("\tn1 = %3d, n2 = %3d:\t\tS = %.15f\n", ...
        n1Vec(i), n2Vec(i), P1Z35_HBL_integral(func, n1Vec(i), n2Vec(i)));
end

fprintf("\n");

end

