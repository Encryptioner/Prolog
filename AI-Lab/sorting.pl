sortfirst(L, S) :-
    maplist(get_first, L, A),
    msort(A, B),
    maplist(set_first, L, B, S).

get_first([E|_], E).
set_first([_|R], E, [E|R]).


%%Bubble sort
%
%
%
bubblesort(L, L1) :-
( bubble(L, L2)
-> bubblesort(L2, L1)
; L = L1 ).


bubble([A, B|T], L) :-
( A > B
-> L = [B, A|T]
; L = [A | L1],
bubble([B|T], L1)).


%bubblesort([1,5,2,6,3,67,9],Out).
%Out = [1, 2, 3, 5, 6, 9, 67].
%
%


%%%Linear Search
%
list_of_my_elements([1,5,2,7,3,78,4]).

in_my_list_of_elements(X) :-
list_of_my_elements(L),
member(X, L).


%n_my_list_of_elements(7).
%True
%


%Insertion Sort
%
%
insert(X, [], [X]):- !.
insert(X, [X1|L1], [X, X1|L1]):- X=<X1, !.
insert(X, [X1|L1], [X1|L]):- insert(X, L1, L).


insertionSort([], []):- !.
insertionSort([X|L], S):- insertionSort(L, S1), insert(X, S1, S).


% insertionSort([4,5,2,5],R).
%R = [2, 4, 5, 5].
%



