% generates a destroyer and returns its coordinate

% destroyer occupies 3 tiles
function [board, coordinate] = destroyer(matrix)

board = matrix;
coordinate = [];
% see if ship is vertical or horizontal
direction = isVertical();

% beware of non-0 tiles

% if vertical
if direction == true
    % get a random starting point
    startingPoint = startingPointVertical(board,3);
    for index = startingPoint(1):startingPoint(1)+2
        % ship symbolized by 3
        board(index,startingPoint(2)) = 3;
        coordinate = [coordinate; index startingPoint(2)];
    end
% if horizontal
else
    % get a random starting point
    startingPoint = startingPointHorizontal(board,3);
    for index = startingPoint(2):startingPoint(2)+2
        % ship symbolized by 3
        board(startingPoint(1),index) = 3;
        coordinate = [coordinate; startingPoint(1) index];
    end
end
end
    