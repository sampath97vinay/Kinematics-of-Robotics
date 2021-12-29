Rotation_matrix = rotm2tform([0.9254 0.0180 0.3785; 0.1632 0.8826 -0.4410; -0.3420 0.4698 0.8138])

res = rpy2tr(30*pi/180,20*pi/180,10*pi/180)

tol = 0.0001; % or something
if all(abs(Rotation_matrix - res) <= tol)
    disp('matrices are the same');
else
    disp('matrices are different');
end