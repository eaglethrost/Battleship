% generates a submarine and returns its coordinate

% submarine occupies 2 tiles
function [board,coordinate] = submarine(matrix)

board = matrix;
coordinate = [];
% see if ship is vertical or horizontal
direction = isVertical();

% beware of non-0 tiles

% if vertical
if direction == true
    % get a random starting point
    startingPoint = startingPointVertical(board,2);
    for index = startingPoint(1):startingPoint(1)+1
        % ship symbolized by 2
        board(index,startingPoint(2)) = 2;
        coordinate = [coordinate; index startingPoint(2)];
    end
% if horizontal
else
    % get a random starting point
    startingPoint = startingPointHorizontal(board,2);
    for index = startingPoint(2):startingPoint(2)+1
        % ship symbolized by 2
        board(startingPoint(1),index) = 2;
        coordinate = [coordinate; startingPoint(1) index];
    end
end
end