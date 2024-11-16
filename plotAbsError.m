function plotAbsError(func, nVec, expectedResult)

if ~exist("expectedResult", "var")
    expectedResult = P1Z35_HBL_integral(func, 1000, 1000);
end

error = [];
h = [];

for i = 1:length(nVec)
    error(i) = abs(P1Z35_HBL_integral(func,nVec(i),nVec(i)) - expectedResult);
    h(i) = 2/nVec(i);
end

plot(h,error,"DisplayName",func2str(func));
set(gca, "XDir", "reverse");
set(gca, "YScale", "log");
ylabel("Błąd bezwzględny");
xlabel("h - długość podrzedziałów");

end

