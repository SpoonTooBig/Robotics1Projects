% PROBLEM 1
base_frame = eye(4,4);

rotated_frame = custom_rotz(90);
displacement = [10;0;0;];

new_frame = displacement_matrix(rotated_frame, displacement)


% END PROBLEM 1

% PROBLEM 2
matrix = displacement_matrix(custom_rotz(30),[4;3;0]);
A_inv = matrix^-1;
% END PROBLEM 2

% PROBLEM 3
euler = euler_matrix(30,30,30)
function E = euler_matrix(tx, ty, tz)
Ax = custom_rotx(tx);
Ay = custom_roty(ty);
Az = custom_rotz(tz);
E = Ax*Ay*Az;
end
% END PROBLEM 3

function R = custom_rotz(angle_deg)

    ang = deg2rad(angle_deg);
    c = cos(ang);
    s = sin(ang);
    
    R = [ c, -s,  0;
          s,  c,  0;
          0,  0,  1];
end

function R = custom_rotx(angle_deg)

    ang = deg2rad(angle_deg);
    c = cos(ang);
    s = sin(ang);
    
    R = [ 1, 0,  0;
          0,  c,  -s;
          0,  s,  c];
end

function R = custom_roty(angle_deg)

    ang = deg2rad(angle_deg);
    c = cos(ang);
    s = sin(ang);
    
    R = [ c, 0,  s;
          0, 1,  0;
          -s,  0, c];
end

function D = displacement_matrix(rotation, displacement)
    D = zeros(4,4);
    D(4,4) = 1;
    D(1:3,1:3) = rotation;
    D(1:3,4) = displacement;
end

% Problem 3 Spatial Descriptions
R = custom_rotz(30);
Pb1 = R*[0;2;0]
% End Problem 3 Spatial Descriptions

% Problem 4 Spatial Descriptions
R = custom_rotz(56);
Pb2 = R*[0;2;0]

R = custom_rotz(45);
Pb3 = R*[0;2;0]
% End Problem 4 Spatial Descriptions

% Problem 2.3 
BP = [3;7;0;1];

T = displacement_matrix(custom_rotz(30),[10;5;0]);
P1 = T*BP

T = displacement_matrix(custom_rotz(45),[10;5;0]);
P2 = T*BP

T = displacement_matrix(custom_rotz(60),[10;5;0]);
P3 = T*BP
% Problem 2.3 

