% battleship game v1.0 by Dimas Putra Anugerah
% this program allows users to play a simple battlehsip game

% clear screen
clc;
clear all;

% 1. INTRODUCTION

% get username
user = input("Please type in your username: ",'s');
disp(" ");
fprintf("Welcome to Battleship %s!\n", user);
pause(2);

% simple battleship description
disp("Battleship is a game in which you try to sink your rival’s ships");
pause(3);
disp(" ");

% game description
gameRules;
pause(3);
disp(" ");

% ask user to start game
start = false;
while start == false
    answer = input("Alright!, type 's' to begin the game and have fun! ", 's');
    if answer == 's'
        start = true;
    else
        disp("Please type s");
    end
end

% 2. START GAME

disp(" ");

% run until user quits game
play = true;
while play == true
    
    % 3. GENERATE BOARDS AND SHIPS
    
    % generate answer and player board
    playBoard = playerBoard();
    board = answerBoard();
    dispBoard(playBoard);
    
    % create ships
    [board,CarrierLoc] = carrier(board);
    [board,BattleshipLoc] = battleship(board);
    [board,Destroyer1Loc] = destroyer(board);
    [board,Destroyer2Loc] = destroyer(board);
    [board,Submarine1Loc] = submarine(board);
    [board,Submarine2Loc] = submarine(board);
    
    % win condition
    win = false;
    % start count
    guesses = 0;
    
    % ship statuses
    carrierSunk = false;
    battleshipSunk = false;
    destroyer1Sunk = false;
    destroyer2Sunk = false;
    submarine1Sunk = false;
    submarine2Sunk = false;
    
    % 4. PROMPT GUESSES FROM USER
    
    % start timer
    tstart = tic;
    
    % play until user win
    while win == false
      
        % prompt input until an acceptable answer is reached
        answerValid = false;
        while ~answerValid
            % get input
            answer = str2num(input("Guess a position: ",'s'));
            % if valid, break out of loop
            if isAnswerValid(answer,playBoard) == true
                answerValid = true;
            end
        end
        % add no.of guesses
        guesses = guesses + 1;
        % change playerboard to x or .
        if isAhit(answer,board)
            % change player board to x
            playBoard(answer(1),answer(2)) = 'x';
            % notify user
            disp(" ");
            fprintf("It's a hit!\n");
            pause(1)
            dispBoard(playBoard);
        else
            % change player board to .
            playBoard(answer(1),answer(2)) = '.';
            % notify user
            disp(" ");
            fprintf("You missed!\n");
            dispBoard(playBoard);
        end
        
        % 5. CHECK IF SHIPS ARE SUNK
        
        % check if carrier was sunk
        if isSunk(playBoard,CarrierLoc) && carrierSunk == false
            fprintf("You have sunk the carrier!\n");
            playBoard = revealShip(CarrierLoc,playBoard);
            % change status to true
            carrierSunk = true;
        end
        % check if battleship was sunk
        if isSunk(playBoard,BattleshipLoc) && battleshipSunk == false
            fprintf("You have sunk the battleship!\n");
            playBoard = revealShip(BattleshipLoc,playBoard);
            % change status to true
            battleshipSunk = true;
        end
        % check if destroyer 1 was sunk
        if isSunk(playBoard,Destroyer1Loc) && destroyer1Sunk == false
            fprintf("You have sunk destroyer 1!\n");
            playBoard = revealShip(Destroyer1Loc,playBoard);
            % change status to true
            destroyer1Sunk = true;
        end
        % check if destroyer 2 was sunk
        if isSunk(playBoard,Destroyer2Loc) && destroyer2Sunk == false
            fprintf("You have sunk destroyer 2!\n");
            playBoard = revealShip(Destroyer2Loc,playBoard);
            % change status to true
            destroyer2Sunk = true;
        end
        % check if submarine 1 was sunk
        if isSunk(playBoard,Submarine1Loc) && submarine1Sunk == false
            fprintf("You have sunk submarine 1!\n");
            playBoard = revealShip(Submarine1Loc,playBoard);
            % change status to true
            submarine1Sunk = true;
        end
        % check if submarine 2 was sunk
        if isSunk(playBoard,Submarine2Loc) && submarine2Sunk == false
            fprintf("You have sunk submarine 2!\n");
            playBoard = revealShip(Submarine2Loc,playBoard);
            % change status to true
            submarine2Sunk = true;
        end
        % check if all ships are sunk
        if carrierSunk == true && battleshipSunk == true && destroyer1Sunk == true && destroyer2Sunk == true && submarine1Sunk == true && submarine2Sunk == true
            win = true;
        end
    end
    
    % 6. GAME ENDS, PRINT STATS
    
    % end timer
    tEnd = toc(tstart);
    
    fprintf("Congratulations!, you have won the game!\n");
    pause(2);
    % print game stats
    fprintf("You had %d attempt(s)\n", guesses);
    fprintf("Time taken for this game: %.3f seconds\n", tEnd);
    
    % 7. ASK USER TO PLAY AGAIN
    
    % loop until answer is valid
    validAnswer = false;
    while validAnswer == false
        % ask if user wants to play again
        playAgain = input("Do you want to play again?(y/n)\n", 's');
        if playAgain == 'y'
            disp("Nice!!, let's get started again");
            % pause for a while
            pause(2)
            % play again
            play = true;
            validAnswer = true;
        elseif playAgain == 'n'
            % end program
            fprintf("Okay, thank you for playing %s!\n", user);
            play = false;
            validAnswer = true;
        else
            % repeat question
            fprintf("Sorry, can't quite catch that!\n");
        end
    end
end