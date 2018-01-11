match([H|_],0,H) :-
    !.
match([_|T],N,H) :-
    N > 0, %add for loop prevention
    N1 is N-1,
    match(T,N1,H).

%query = match([a,b,c,d,e],0,X).%
%
%
%
%***nth element of a list.
nth(0,[X|_],X).
nth(N,[_|T],R):- M is N-1,nth(M,T,R).

%nth(0,[a,b,c],R).
%R = a
