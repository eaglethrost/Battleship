% this function displays player board
function [] = dispBoard(matrix)


% print column number
fprintf("   ");
for i = 1:size(matrix,2)
    fprintf("%s ", num2str(i));
end
fprintf("\n");

% print rows
for row = 1:size(matrix,1)
    % special case for number 10, print row number
    if row == 10
        fprintf("%s ", num2str(row));
    else
        fprintf("%s  ", num2str(row));
    end
    % print content of matrix
    for col = 1:size(matrix,2)
        fprintf("%s ", matrix(row,col));
    end
    fprintf("\n");
end
end