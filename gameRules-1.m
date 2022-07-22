function [] = gameRules
% how to play this game
disp("How do you play this game? These are some guidelines!:");
pause(2)
% computer generates ships
disp(" 1. At the start of the game, the computer will generate:"); 
disp("   - 1 carrier ship(5 tiles)");
disp("   - 1 cruiser ship(4 tiles)");
disp("   - 2 destroyer ships(3 tiles each)");
disp("   - 2 submarine ships(2 tiles each)");
disp("    In a 10x10 square grid");
% guessing part
disp(" 2. Next, you will be asked to guess a tile");
disp("   - Here is how you type in your guess(you don't need the brackets): [row column] or [row,column]");
% display explaination
disp(" 3. After each guess, a player board will be displayed to keep track of the tiles you have guessed")
disp("   - '*' means tile is not guessed yet")
disp("   - 'x' means a tile you have guessed is a part of a ship. Keep track of this!");
disp("   - '.' means it's a miss; you did not hit a ship");
% ship sunk explaination
disp(" 4. If you have successfully hit all parts of a ship, you will be notified");
disp(" 5. The game ends when you have sunk all 6 ships in the board");
end