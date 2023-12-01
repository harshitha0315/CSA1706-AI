move(1, From, To) :-
    write('Move disk 1 from '),
    write(From),
    write(' to '),
    write(To),
    nl.
move(N, From, To) :-
    M is N - 1,
    move(M, From, Aux),
    move(1, From, To),
    move(M, Aux, To).

% Define the hanoi/1 predicate to start the Towers of Hanoi with N disks.
hanoi(N) :-
    move(N, 'A', 'C').
% Predicate to ask the user for input and run the Towers of Hanoi.
hanoi_with_user_input :-
    write('Enter the number of disks: '),
    read(N),
    hanoi(N).
