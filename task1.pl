gcd(A, 0, A) :- !.
gcd(A, B, F) :-
    A mod B =:= 0,
    F = B,
    !.
gcd(A, B, F) :-
    A > B,
    !,
    B1 is A mod B,
    gcd(B, B1, F).
gcd(A, B, F) :-
    A < B,
    gcd(B, A, F).

main :-
    write('Enter first number: '),
    read(X),
    write('Enter second number: '),
    read(Y),
    gcd(X, Y, Result),
    write('Result: '), write(Result), nl.

:- initialization(main).