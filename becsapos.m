format longE
coef1 = [double(10e-17),double(1);double(1),double(1)]
coef2 = [double(1),double(1);double(10e-17),double(1)]
sol1 = [double(1); double(2)]
sol2 = [double(2);double(1)]
linsolve(coef1,sol1)
linsolve(coef2,sol2)

coef3 = [double(888445),double(887112);double(887112),double(888445)]
sol3 = [double(1); double(0)]
linsolve(coef3, sol3)