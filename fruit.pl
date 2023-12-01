% Define facts about fruits and their colors
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(orange, orange).

% Define a predicate to find a fruit based on its color using backtracking
find_fruit(Color, Fruit) :-
    fruit_color(Fruit, Color).
