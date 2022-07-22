% function that checks if horizontal ship tiles clash with each other

function point = startingPointHorizontal(matrix,num)
point = 0;
ok = false;
% while loop until a point is valid
while ok == false
    % generate a random x and y point
    point(1) = randi([1 10]);
    point(2) = randi([1 10-num]);
    
    % check the x coordinate
    i = point(2);
    check = true;
    % look through the 4 potential tiles of ship to see if it clashes
    while check == true && i ~= point(2)+num
        % if the ship tile doesnt clash with another
        if matrix(point(1),i) == 0
            check = true;
        else
            check = false;
        end
        i = i+1;
    end
    % if clashes, return to loop and generate another point
    if check == false
        ok = false;
    % if point doesnt clash, stop loop
    else
        ok = true;
    end
end
end