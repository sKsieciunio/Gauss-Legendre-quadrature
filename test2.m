function test2()

fprintf( ...
"Ten test sprawdza czy zaimplementowana złożona 3-punktowa kwadratura\n" + ...
"Gaussa-Legendre'a jest piątego rzędu. Dla wielomianów stopnia najwyżej 5\n" + ...
"funkcja testowana powinna zwracać dokładny wynik już dla n1 = 1, n2 = 1\n" + ...
"Natomiast dla wielomianów stopnia większego niż 5 zwracane wyniki powinny\n" + ...
"być zbiegać do dokładnego wyniku wraz z rosnącymi n1 oraz n2.\n\n")

n1Vec = [1 2 3 10];
n2Vec = n1Vec;

testuniterror(@(x,y) (x+1) + (y+1), n1Vec, n2Vec, 4);
testuniterror(@(x,y) (x+1).^2 + (y+1).^2, n1Vec, n2Vec, 14/3);

input("Wciśnij Enter, aby kontynuować testy...\n");

testuniterror(@(x,y) (x+1).^3 + (y+1).^3, n1Vec, n2Vec, 6);
testuniterror(@(x,y) (x+1).^4 + (y+1).^4, n1Vec, n2Vec, 124/15);
testuniterror(@(x,y) (x+1).^5 + (y+1).^5, n1Vec, n2Vec, 12);

input("Wciśnij Enter, aby kontynuować testy...\n");

testuniterror(@(x,y) (x+1).^6 + (y+1).^6, n1Vec, n2Vec, 18.142857142857185);
testuniterror(@(x,y) (x+1).^7 + (y+1).^7, n1Vec, n2Vec, 85/3);
testuniterror(@(x,y) x.^7 + y.^7, n1Vec, n2Vec, 0)

% testunit(@(x,y) x.^5 + y.^4 + x.^2.*y.^3 + x, n1Vec, n2Vec, ...
%     "Natychmiastowa zbieżność");
% 
% input("Wciśnij Enter, aby kontynuować testy...\n");
% 
% testunit(@(x,y) x.^6 + y.^6 + x.^4.*y.^2 + x.^2.*y.^2, n1Vec, n2Vec, ...
%     "Stopniowa zbieżność");
% testunit(@(x,y) x.^10 + y.^8, n1Vec, n2Vec, "Stopniowa zbieżność");
% testunit(@(x,y) (x-1).^9 + (y+1).^8, n1Vec, n2Vec, "Stopniowa zbieżność");
% 
% input("Wciśnij Enter, aby kontynuować testy...\n");
% 
% testunit(@(x,y) exp(-(x.^2 + y.^2)), n1Vec, n2Vec, "Stopniowa zbieżność");
% testunit(@(x,y) sin(x.^2 + y.^2), n1Vec, n2Vec, "Stopniowa zbieżność");

end


