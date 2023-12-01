% Define the predicate hanoi/3
% hanoi(N, Source, Target) solves the Tower of Hanoi problem for N disks,
% moving them from the source peg to the target peg using an auxiliary peg.
hanoi(0, _, _, _) :- !.  % Base case: No disks to move.

hanoi(N, Source, Target, Auxiliary) :-
    M is N - 1,
    hanoi(M, Source, Auxiliary, Target),  % Move N-1 disks from source to auxiliary.
    move_disk(N, Source, Target),  % Move the Nth disk from source to target.
    hanoi(M, Auxiliary, Target, Source).  % Move the N-1 disks from auxiliary to target.

% Define the predicate move_disk/2
% move_disk(Disk, Source, Target) prints the move of Disk from Source to Target.
move_disk(Disk, Source, Target) :-
    write('Move disk '), write(Disk),
    write(' from '), write(Source),
    write(' to '), write(Target), nl.

% Example query: solve the Tower of Hanoi problem for 3 disks
% ?- hanoi(3, 'A', 'C', 'B').
