function test1()

fprintf( ...
"Ten test sprawdza czy zaimplementowana złożona 3-punktowa kwadratura\n" + ...
"Gaussa-Legendre'a zwraca numerycznie poprawne wyniki. Oczekiwane wyniki\n" + ...
"zostały policzone analitycznie.\n\n");

n1Vec = [10 20];
n2Vec = n1Vec;

testunit(@(x,y) 1, n1Vec, n2Vec, "2.0")
testunit(@(x,y) x.^2 + y.^2, n1Vec, n2Vec, "2/3 = 0.6(6)");
testunit(@(x,y) sin(x.^2 .* abs(y)), n1Vec, n2Vec, "1/15 = 0.06(6)");

input("Wciśnij Enter, aby kontynuować testy...\n");

testunit(@(x,y) abs(x) + abs(y), n1Vec, n2Vec, "4/3 = 1.3(3)");
testunit(@(x,y) exp(x+y), n1Vec, n2Vec, ...
    "exp(1) - exp(-1) = 2.350402387287...");
testunit(@(x,y) sin(x)*cos(y), n1Vec, n2Vec, "0.0");


end