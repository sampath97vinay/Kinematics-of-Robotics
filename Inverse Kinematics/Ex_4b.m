for i=1:4
    for j=1:4
        tr_matrix(i,j) = input("Enter the element " + i+","+j+" of transformation matrix: ");
    end
end

disp("The entered matrix is: ")
disp(tr_matrix)

inv = ikine(tr_matrix)