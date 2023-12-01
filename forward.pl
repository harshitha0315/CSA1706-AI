% Define some facts about animals and their characteristics
has_fur(dog).
has_fur(cat).
has_feathers(bird).
has_scales(fish).

% Define rules to infer whether an animal is a mammal or not
mammal(X) :-
    has_fur(X).

% Rule to infer that an animal is not a mammal
not_mammal(X) :-
    has_feathers(X);
    has_scales(X).

% Query to check if an animal is a mammal or not
query_mammal(X) :-
    mammal(X),
    write(X), write(' is a mammal.').

query_mammal(X) :-
    not_mammal(X),
    write(X), write(' is not a mammal.').

% Example queries
% Uncomment and run the queries to see the results

% query_mammal(dog).
% query_mammal(cat).
% query_mammal(bird).
% query_mammal(fish).
% query_mammal(snake).
