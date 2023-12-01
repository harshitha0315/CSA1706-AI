% Initial state
state(at_door, on_floor, at_window, has_not).

% Define actions
action(grasp).
action(climb).
action(push).
action(walk).

% Define state transitions
transition(state(at_window, on_floor, at_window, has_not), grasp, state(at_window, on_floor, at_window, has)).
transition(state(at_window, on_floor, at_window, has), climb, state(at_window, on_chair, at_window, has)).
transition(state(at_window, on_chair, at_window, has), push, state(at_window, on_chair, at_window, has)).
transition(state(at_window, on_chair, at_window, has), walk, state(at_door, on_floor, at_window, has)).

transition(state(at_door, on_floor, at_window, has_not), walk, state(at_window, on_floor, at_window, has)).
transition(state(at_window, on_floor, at_window, has_not), climb, state(at_window, on_chair, at_window, has)).
transition(state(at_window, on_chair, at_window, has), grasp, state(at_window, on_chair, at_window, has)).
transition(state(at_window, on_chair, at_window, has), walk, state(at_door, on_floor, at_window, has)).

% Define goal state
goal_state(state(_, _, _, has)).

% Plan to reach the goal
plan(State, Plan) :-
    goal_state(State), Plan = [].
plan(State, [Action | Rest]) :-
    action(Action),
    transition(State, Action, NextState),
    plan(NextState, Rest).

% Example query
% plan(state(at_door, on_floor, at_window, has_not), Plan).
