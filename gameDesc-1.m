% game description

% get username
user = input("Please type in your username: ",'s');
fprintf("Welcome to Battleship %s!\n", user);
pause(1);
disp("Battleship is a strategy game in which you try to ‘sink’ your rival’s ships by guessing the positions in which they place their ships");
pause(2)

% start
start = false;
while start == false
    answer = input("Alright!, press any key to start the game and have fun!! ", 's');
    if answer ~= ' '
        start = true;
    else
        disp("No ok");
    end
end

