alpha = 10
beta = 20
gamma = 30
P_BA = transl(1,2,3)

R_BA = rotz(10,'deg')*roty(20,'deg'),rotx(30,'deg')

T_BA = rotm2tform(R_BA)*P_BA 