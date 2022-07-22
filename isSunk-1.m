% this function checks if all the tiles of a ship is hit or not

function [condition] = isSunk(playerBoard,coordinate)
% return true or false
row = 1;
condition = true;

% if all of a ship's coordinates are hit, the ship is sunk
while row ~= size(coordinate,1)+1 && condition == true % loop through number of coordinates
    % compare if the coordinate points in playerboard are a hit or not
    if playerBoard(coordinate(row,1),coordinate(row,2)) == 'x'
        condition = true;
    else
        condition = false;
    end
    % increment row
    row = row + 1;
end
end