clc;
clear all;

for i=1:3
    for j = 1:3
        R_BA(i,j) = input("Enter the rotation matrix: ");
    end
end

R_BA = reshape(R_BA,i,j)

beta = atan2(-R_BA(3,1),sqrt((R_BA(1,1).^2)+(R_BA(2,1).^2)));

if beta == 90
    beta = 90
    alpha = 0;
    gamma = atan2(R_BA(1,2),R_BA(2,2));
else
    alpha = atan2(R_BA(2,1)/cosd(beta),R_BA(1,1)/cosd(beta));
    gamma = atan2(R_BA(3,2)/cosd(beta),R_BA(3,3)/cosd(beta));

end

if beta == -90
    beta = -90
    alpha = 0
    gamma = atan2(R_BA(1,2),R_BA(2,2))
else
    alpha = atan2(R_BA(2,1)/cosd(beta),R_BA(1,1)/cosd(beta));
    gamma = atan2(R_BA(3,2)/cosd(beta),R_BA(3,3)/cosd(beta));

end

disp("Alpha is: ")
disp(ceil(alpha*180/pi))
disp("Beta is: ")
disp(ceil(beta*180/pi))
disp("Gamma is: ")
disp(ceil(gamma*180/pi))


    


    