base = eye(4)
R_BA = roty(20*pi/180)
BP = [1;0;1]
AP = R_BA*BP
figure
trplot(base,'frame','A','color','blue','arrow')
grid on
axis([0 1 0 1])
hold on
trplot(R_BA,'frame','B','color','red','arrow')
