% generates a battleship and returns its coordinate

% battleship occupies 4 tiles
function [board,coordinate] = battleship(matrix)

board = matrix;
coordinate = [];
% see if ship is vertical or horizontal
direction = isVertical();

% beware of non-0 tiles

% if vertical
if direction == true
    % get a random starting point
    startingPoint = startingPointVertical(board,4);
    for index = startingPoint(1):startingPoint(1)+3
        % ship symbolized by 4
        board(index,startingPoint(2)) = 4;
        coordinate = [coordinate; index startingPoint(2)];
    end
% if horizontal
else
    % get a random starting point
    startingPoint = startingPointHorizontal(board,4);
    for index = startingPoint(2):startingPoint(2)+3
        % ship symbolized by 4
        board(startingPoint(1),index) = 4;
        coordinate = [coordinate; startingPoint(1) index];
    end
end
end
    