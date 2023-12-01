food(red_meat, iron, high).
food(dairy, calcium, high).
food(junk_food, fat, high).
food(sweets, sugar, high).
foods(Food,Type,Quantity):-
    food(Food,Type,Quantity).

% Rules to suggest a diet based on disease
suggest_diet(Disease, Diet) :-
    disease_diet(Disease, Diet).

disease_diet(diabetes, [vegetables, fish, nuts, fruits]).
disease_diet(hypertension, [vegetables, fish, fruits, dairy]).
disease_diet(anemia, [red_meat, fish, nuts, vegetables]).
disease_diet(obesity, [vegetables, fruits, fish, low_fat_dairy]).
