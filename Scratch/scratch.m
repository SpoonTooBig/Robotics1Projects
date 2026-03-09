theta = pi/6;

c = cos(theta);
s = sin(theta);

aTb = [c, -s, 0, 10;
       s,  c, 0, 5;
       0,  0,  1, 0;
       0,  0,  0, 1;]

aRb = [c, -s, 0;
       s,  c, 0;
       0,  0,  1]

bTa = inv(aTb)
bTa * [3;7;0;1]

