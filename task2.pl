countEndsWith([], _, 0).

countEndsWith([H|T], Digit, Count) :-
    H mod 10 =:= Digit, 
    countEndsWith(T, Digit, Rest),
    Count is Rest + 1.

countEndsWith([H|T], Digit, Count) :-
    H mod 10 =\= Digit, 
    countEndsWith(T, Digit, Count).

main :-
    write('Enter the list of numbers: '),
    read(List),
    write('Enter the digit: '),
    read(Digit),
    countEndsWith(List, Digit, Count),
    write('Result: '), write(Count).
	
:- initialization(main).
