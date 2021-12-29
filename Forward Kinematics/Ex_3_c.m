%Given link lengths:
L1=4
L2=3
L3=2

%DH parameters are found as follows:
DH = [0 0 0 0; 0 L1 0 0; 0 L2 0 0; ];

%Defining the links:
L(1) = Link('revolute','d',DH(1,3),'a',DH(1,2),'alpha',DH(1,1),'modified')
L(2) = Link('revolute','d',DH(2,3),'a',DH(2,2),'alpha',DH(2,1),'modified')
L(3) = Link('revolute','d',DH(3,3),'a',DH(3,2),'alpha',DH(3,1),'modified')

Robot = SerialLink(L,'name','This is a planar robot')

i = [0 0 0]
ii = [10*pi/180 20*pi/180 30*pi/180]
iii = [90*pi/180 90*pi/180 90*pi/180]

subplot(3,1,1)
Robot.plot(i)
subplot(3,1,2)
Robot.plot(ii)
subplot(3,1,3)
Robot.plot(iii)

T_03_i = fkine(Robot,i)
T_03_ii = fkine(Robot,ii)
T_03_iii = fkine(Robot,iii)
