z = 5;
suppA = [1 2 3];
suppB = [2 5 7];
syms x y;
invOperator = solve(x * y - z == 0,y);% operator definition
A = @(t) trimf(t,suppA);
B = @(t) trimf(subs(invOperator,t),suppB);
sloveInterval = suppA(1):0.01:suppA(end);
sloveInterval(sloveInterval==0) =[];
minAB = min(A(sloveInterval),B(sloveInterval));
plot(sloveInterval,A(sloveInterval),sloveInterval,B(sloveInterval),sloveInterval,minAB);