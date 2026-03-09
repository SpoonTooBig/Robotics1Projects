% PROBLEM 2.9 BEGIN
A = [-9 4 4 -5; 6 -2 -7 9; -5 0 -9 5; 0 -7 0 4];
B = [1; 0; -2; 3];

C = [B A*B (A^2)*B (A^3)*B];

disp("Rank of controllability matrix is:")
rank(C)
disp("System is controllable because n=4")

desiredPoles =[-15; -10; -2+2j; -2-2j];

disp("Desired polynomial, from target poles is:")
desiredPoly = poly(desiredPoles)

disp("Characterisitc Polynomial of A is:")
Apoly = poly(A)

Ac = [0 1 0 0; 0 0 1 0; 0 0 0 1; -Apoly(5) -Apoly(4) -Apoly(3) -Apoly(2)]
Bc = [0; 0; 0; 1]

Cc = [Bc, Ac*Bc (Ac^2)*Bc (Ac^3)*Bc]

Tc = C*inv(Cc)

Kc = flip(Apoly(2:5)-desiredPoly(2:5))

disp("Feedback Matrix for A,B is:")
K = Kc*inv(Tc)
% PROBLEM 2.9 END

A = [0 1; 0 2];
B = [1; 1];
C = [0 1];

cont = [B A*B]
obs = [C; C*A]

rank(cont)