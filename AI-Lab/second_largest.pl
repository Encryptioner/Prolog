slne([E0, E1|Es], Res) :-
    E0 > E1, !,
    slne(Es, E0, E1, Res).
slne([E0, E1|Es], Res) :-
    slne(Es, E1, E0, Res).

slne([], _, Res, Res).

slne([E|Es], Max, _SecMax, Res) :-
    E >= Max, !,
    slne(Es, E, Max, Res).

slne([E|Es], Max, SecMax, Res) :-
    E >= SecMax, !,
    slne(Es, Max, E, Res).

slne([_|Es], Max, SecMax, Res) :-
    slne(Es, Max, SecMax, Res).

sl(L,X):-
    L=[H|T],
    sort(L,X).

sec(L, Y) :- dsort(L, [X,Y|T]).

revcompare(R,X,Y) :- compare(R,Y,X).

sec_lar(List,X):-
        msort(List,SortedList),reverse(SortedList,[_|[X|_]]).





