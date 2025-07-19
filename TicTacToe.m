# Setup
numboard = {1, 2, 3, 4, 5, 6, 7, 8, 9};
board = {0, 0, 0, 0, 0, 0, 0, 0, 0};
disp("Welcome to Tic Tac Toe!");
disp("0 = Empty Space");
disp("1 = Player Move");
disp("2 = Computer Move");
Pmove = 0;  # Player Move
Cmove = 0;  # Computer Move
function Pboard(board)
  disp(" ");
  printf("%d | %d | %d\n", board{7}, board{8}, board{9});
  printf("---------\n");
  printf("%d | %d | %d\n", board{4}, board{5}, board{6});
  printf("---------\n");
  printf("%d | %d | %d\n", board{1}, board{2}, board{3});
endfunction
Pboard(numboard);
Pboard(board);
function main(board)
  # Board Full
  if(board{1} != 0) && (board{2} != 0) && (board{3} != 0) && (board{4} != 0) && (board{5} != 0) && (board{6} != 0) && (board{7} != 0) && (board{8} != 0) && (board{9} != 0)
    disp("No Winner.");
    replay
  endif
  Pmove = input("Enter your Move (#1-9): ");
  # Player Move Validation
  if(board{Pmove} == 0)
   board{Pmove} = 1;
  else
    disp("Invalid Move");
  endif
  # Did Player Win?
  if(board{1} == 1) && (board{4} == 1) && (board{7} == 1)
    Pboard(board);
    disp("You Win!");
    replay
  endif
  if(board{2} == 1) && (board{5} == 1) && (board{8} == 1)
    Pboard(board);
    disp("You Win!");
    replay
  endif
  if(board{3} == 1) && (board{6} == 1) && (board{9} == 1)
    Pboard(board);
    disp("You Win!");
    replay
  endif
  if(board{1} == 1) && (board{2} == 1) && (board{3} == 1)
    Pboard(board);
    disp("You Win!");
    replay
  endif
  if(board{4} == 1) && (board{5} == 1) && (board{6} == 1)
    Pboard(board);
    disp("You Win!");
    replay
  endif
  if(board{7} == 1) && (board{8} == 1) && (board{9} == 1)
    Pboard(board);
    disp("You Win!");
    replay
  endif
  if(board{1} == 1) && (board{5} == 1) && (board{9} == 1)
    Pboard(board);
    disp("You Win!");
    replay
  endif
  if(board{3} == 1) && (board{5} == 1) && (board{7} == 1)
    Pboard(board);
    disp("You Win!");
    replay
  endif
  # Computer Can Win?
  # Corners
  # Top Left Corner
  if(board{1,1} == 2)
    if(board{1,2} == 2)
      if(board{1,3} == 0)
       Cmove = 3;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,3} == 2)
      if(board{1,2} == 0)
       Cmove = 2;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,5} == 2)
      if(board{1,9} == 0)
       Cmove = 9;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,9} == 2)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,4} == 2)
      if(board{1,7} == 0)
       Cmove = 7;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,7} == 2)
      if(board{1,4} == 0)
       Cmove = 4;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
  endif

  # Top Right Corner
  if(board{1,3} == 2)
    if(board{1,2} == 2)
      if(board{1,1} == 0)
       Cmove = 1;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,1} == 2)
      if(board{1,2} == 0)
       Cmove = 2;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,5} == 2)
      if(board{1,7} == 0)
       Cmove = 7;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,7} == 2)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,6} == 2)
      if(board{1,9} == 0)
       Cmove = 9;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,9} == 2)
      if(board{1,6} == 0)
       Cmove = 6;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
  endif

  # Bottom Left Corner
  if(board{1,7} == 2)
    if(board{1,1} == 2)
      if(board{1,4} == 0)
       Cmove = 4;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,4} == 2)
      if(board{1,1} == 0)
       Cmove = 1;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,5} == 2)
      if(board{1,3} == 0)
       Cmove = 3;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,3} == 2)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,8} == 2)
      if(board{1,9} == 0)
       Cmove = 9;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,9} == 2)
      if(board{1,8} == 0)
       Cmove = 8;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
  endif

  # Bottom Right Corner
  if(board{1,9} == 2)
    if(board{1,7} == 2)
      if(board{1,8} == 0)
       Cmove = 8;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,8} == 2)
      if(board{1,7} == 0)
       Cmove = 7;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,5} == 2)
      if(board{1,1} == 0)
       Cmove = 1;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,1} == 2)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,6} == 2)
      if(board{1,3} == 0)
       Cmove = 3;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,3} == 2)
      if(board{1,6} == 0)
       Cmove = 6;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
  endif
  # Sides
  # Top Side
  if(board{1,2} == 2)
    if(board{1,5} == 2)
      if(board{1,8} == 0)
       Cmove = 8;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,8} == 2)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
  endif
  # Left Side
  if(board{1,4} == 2)
    if(board{1,5} == 2)
      if(board{1,6} == 0)
       Cmove = 6;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,6} == 2)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
  endif
  # Bottom Side
  if(board{1,8} == 2)
    if(board{1,5} == 2)
      if(board{1,2} == 0)
       Cmove = 2;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,2} == 2)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
  endif
  # Right Side
  if(board{1,6} == 2)
    if(board{1,5} == 2)
      if(board{1,4} == 0)
       Cmove = 4;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
    if(board{1,4} == 2)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        disp("Computer Wins!");
        replay
      endif
    endif
  endif



  # Block Player from Winning?
  # Corners
  # Top Left Corner
  if(board{1,1} == 1)
    if(board{1,2} == 1)
      if(board{1,3} == 0)
       Cmove = 3;
       board{Cmove} = 2;
       Pboard(board);
       main(board);
      endif
    endif
    if(board{1,3} == 1)
      if(board{1,2} == 0)
       Cmove = 2;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,5} == 1)
      if(board{1,9} == 0)
       Cmove = 9;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,9} == 1)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,4} == 1)
      if(board{1,7} == 0)
       Cmove = 7;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,7} == 1)
      if(board{1,4} == 0)
       Cmove = 4;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
  endif

  # Top Right Corner
  if(board{1,3} == 1)
    if(board{1,2} == 1)
      if(board{1,1} == 0)
       Cmove = 1;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,1} == 1)
      if(board{1,2} == 0)
       Cmove = 2;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,5} == 1)
      if(board{1,7} == 0)
       Cmove = 7;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,7} == 1)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,6} == 1)
      if(board{1,9} == 0)
       Cmove = 9;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,9} == 1)
      if(board{1,6} == 0)
       Cmove = 6;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
  endif

  # Bottom Left Corner
  if(board{1,7} == 1)
    if(board{1,1} == 2)
      if(board{1,4} == 0)
       Cmove = 4;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,4} == 1)
      if(board{1,1} == 0)
       Cmove = 1;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,5} == 1)
      if(board{1,3} == 0)
       Cmove = 3;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,3} == 1)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,8} == 1)
      if(board{1,9} == 0)
       Cmove = 9;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,9} == 1)
      if(board{1,8} == 0)
       Cmove = 8;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
  endif

  # Bottom Right Corner
  if(board{1,9} == 1)
    if(board{1,7} == 1)
      if(board{1,8} == 0)
       Cmove = 8;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,8} == 1)
      if(board{1,7} == 0)
       Cmove = 7;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,5} == 1)
      if(board{1,1} == 0)
       Cmove = 1;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,1} == 1)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,6} == 1)
      if(board{1,3} == 0)
       Cmove = 3;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,3} == 1)
      if(board{1,6} == 0)
       Cmove = 6;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
  endif
  # Sides
  # Top Side
  if(board{1,2} == 1)
    if(board{1,5} == 1)
      if(board{1,8} == 0)
       Cmove = 8;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,8} == 1)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
  endif
  # Left Side
  if(board{1,4} == 1)
    if(board{1,5} == 1)
      if(board{1,6} == 0)
       Cmove = 6;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,6} == 1)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
  endif
  # Bottom Side
  if(board{1,8} == 1)
    if(board{1,5} == 1)
      if(board{1,2} == 0)
       Cmove = 2;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,2} == 1)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
  endif
  # Right Side
  if(board{1,6} == 1)
    if(board{1,5} == 1)
      if(board{1,4} == 0)
       Cmove = 4;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
    if(board{1,4} == 1)
      if(board{1,5} == 0)
       Cmove = 5;
       board{Cmove} = 2;
        Pboard(board);
        main(board);
      endif
    endif
  endif

  # Make Move
  # Corners
  if(board{1} == 0)
    Cmove = 1;
    board{Cmove} = 2;
    Pboard(board);
    main(board);
  endif
  if(board{3} == 0)
    Cmove = 3;
    board{Cmove} = 2;
    Pboard(board);
    main(board);
  endif
  if(board{7} == 0)
    Cmove = 7;
    board{Cmove} = 2;
    Pboard(board);
    main(board);
  endif
  if(board{9} == 0)
    Cmove = 9;
    board{Cmove} = 2;
    Pboard(board);
    main(board);
  endif
  # Center
  if(board{5} == 0)
    Cmove = 5;
    board{Cmove} = 2;
    Pboard(board);
    main(board);
  endif
  # Sides
  if(board{2} == 0)
    Cmove = 2;
    board{Cmove} = 2;
    Pboard(board);
    main(board);
  endif
  if(board{4} == 0)
    Cmove = 4;
    board{Cmove} = 2;
    Pboard(board);
    main(board);
  endif
  if(board{8} == 0)
    Cmove = 8;
    board{Cmove} = 2;
    Pboard(board);
    main(board);
  endif
  if(board{6} == 0)
    Cmove = 6;
    board{Cmove} = 2;
    Pboard(board);
    main(board);
  endif
endfunction
function replay
  disp("Play Again? (y/n)");
  Rmove = input("")
  if(Pmove == "y")
    main(board);
  endif
endfunction
while(1 == 1)
  main(board)
endwhile
