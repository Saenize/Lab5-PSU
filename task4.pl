solve(A, N, V, G, D) :-
        (((A == true), (D == true)) -> (N == true) ; true),
        (D == false -> (N == true, V == false) ; true),
        (A \== V),
        (D == true -> (G == false) ; true),
        (N == false, V == false -> D ; true),
        (V == true, N == false -> (D == false, G == true) ; true).
    
	
findSolutions :-
    member(A, [true, false]),
    member(N, [true, false]),
    member(V, [true, false]),
    member(G, [true, false]),
    member(D, [true, false]),
    solve(A, N, V, G, D),
    write('Answer: '),
    (A == true -> write('A ') ; true),
    (N == true -> write('N ') ; true),
    (V == true -> write('V ') ; true),
    (G == true -> write('G ') ; true),
    (D == true -> write('D ') ; true),
    nl,
    fail.
	
findSolutions.

:- initialization(findSolutions).