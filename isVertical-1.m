% function to decide if ship spans vertically or horizontally

function [direction] = isVertical
% generate number 0 or 1
dir = randi([0 1],1);
if dir == 1
    direction = true;
else
    direction = false;
end
end