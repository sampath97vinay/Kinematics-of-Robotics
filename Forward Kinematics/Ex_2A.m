%% a) Here we are demonstrating the Euler angle convention:
%We need the rotation matrix for: alpha = 10, beta = 20, gamma = 30

%%
alpha = input("Enter value of alpha: ")
beta = input("Enter the value of beta: ")
gamma = input("Enter the value of gamma: ")

%Formulating the rotation matrix B w.r.t A:

R_BA = rotz(alpha,'deg')*roty(beta,'deg'),rotx(gamma,'deg')

%Demonstrating the 6 constraints for unitary orthonormal matrices:

X = R_BA(:,1)
Y = R_BA(:,2)
Z = R_BA(:,3)

norm(X)

if norm(X)==norm(Y)==norm(Z)
    disp("X, Y and Z vectors are unit vectors")
else
    disp("Unitary condition not satisfied")
end

if dot(X,Y) == dot(Y,Z) == dot(Z,X)
    disp("Orthonormal condition satisfied")
else
    disp("Orthonormal condition not satisfied")
end

inv_RBA = inv(R_BA) %inverse of rotation matrix

transpose_RBA = transpose(R_BA)

tolerance = 0.0001
if all(abs(inv_RBA-transpose_RBA)<=tolerance)
    disp("Beautiful property demonstrated")
else
    disp("Failed to demonstrate beautiful property")
end


