male(john).
male(bob).
male(jim).

female(jane).
female(susan).
female(lisa).

% Parent relationships
parent(john, bob).
parent(john, jim).
parent(susan, bob).
parent(susan, jim).
parent(bob, lisa).
parent(jane, lisa).

% Rules
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
