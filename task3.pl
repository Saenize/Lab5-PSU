isMember(X, [X|_]).
isMember(X, [_|T]) :- isMember(X, T).
minus([], _, []).
minus([H|T], S2, S) :- isMember(H, S2), !, minus(T, S2, S).
minus([H|T], S2, [H|S]) :- minus(T, S2, S).
	
main :-
    write('Enter 1 set: '),
    read(List1),
    
    write('Enter 2 set: '),
    read(List2),
    
    minus(List1, List2, Result),
    
    write('Result: '),
    write(Result),
    nl.

:- initialization(main).