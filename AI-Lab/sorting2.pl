bubble_sort2(List,Sorted):-
    swap(List,List1),!,
    bubble_sort2(List1.Sorted).

bubble_sort2(Sorted,Sorted).
swap([X,Y|Rest], [Y,X|Rest]):-
    gt(X,Y).

swap([Z|Rest],[Z|Rest1]):-
    swap(Rest,Rest1).

gt(X,Y):- X &gt;Y.




