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

syms thx thy dy ax alphax %syms is symbolic toolbox function

%We know that link transformation matrix is given by:
T_xy = [cos(thy) -sin(thy) 0 ax;
    sin(thy)*cos(alphax) cos(thy)*cos(alphax) -sin(alphax) -sin(alphax)*dy;
    sin(thy)*sin(alphax) cos(thy)*sin(alphax) cos(alphax) cos(alphax)*dy;
    0 0 0 1]

%Link1
syms th0 th1 L1
%Substituting the parameters in the formula with values from DH table
T_01 = subs(T_xy,{thx,thy,dy,ax,alphax},{th0,th1,DH(1,3),DH(1,2),DH(1,1)})

%Link2
syms th1 th2 
T_12 = subs(T_xy,{thx,thy,dy,ax,alphax},{th1,th2,DH(2,3),DH(2,2),DH(2,1)})

%Link3
syms th2 th3
T_23 = subs(T_xy,{thx,thy,dy,ax,alphax},{th2,th3,DH(3,3),DH(3,2),DH(3,1)})

T_03 = simplify(T_01*T_12*T_23)

disp("End effector position is: ")
T_3H = transl(2,0,0)
