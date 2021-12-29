%Link lengths for this example:
L1 = 4; 
L2 = 3;
L3 = 2;

% Writing DH parameters in the order theta, d, a, alpha:

% Here theta values are entered as 0, because during Link initialisation
% the toolbox automatically considers them as variables theta1,theta2 and
% theta3

DH = [0 0 0 0; 0 0 L1 0; 0 0 L2 0];

%Initialising Links with the DH parameters
L(1) = Link('revolute','d',DH(1,2),'a',DH(1,3),'alpha',DH(1,4));
L(2) = Link('revolute','d',DH(2,2),'a',DH(2,3),'alpha',DH(2,4));
L(3) = Link('revolute','d',DH(3,2),'a',DH(3,3),'alpha',DH(3,4));


%Defining the robot:
RRR_Robot = SerialLink(L,'name','This is a Planar Robot')
%Initial joint angles:
qi = [0 0 0];

%Desired joint angles:
qd = [0, pi/4, pi/4];

%Applying forward kinematics for initial and desired positions:
Ti = fkine(RRR_Robot, qi)
Td = fkine(RRR_Robot, qd)

%Representation:
tranimate(Ti,Td)