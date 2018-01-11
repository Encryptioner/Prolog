write_list([]).

write_list([Head|Tail]) :-
    write(Head), nl,
    write_list(Tail).

%write([albert|[alice,bob]],nl. %add albert at first of list
%[H|T}=[a,b,c]. %a=head; b,c=tail
%[X1,X2|T]=[a,b] %X1=a,X2=b,T=null
% [_,_,[X|Y],_,Z|T]=[a,b,[c,d,e].f.g.h]. %_ means don't care value, list
% inside list
%
%
% List1=[a,b,c].
% member(X,List1). %finds all the member of List1
% reverse(List1,X)  %reverse all the value
%
% append([1,2,3].[4,5,6], X). %two list become one
%
%



%Appending list.
append([],L,L).
append([H|T],L,[H|R]):- append(T,L,R).

% append([a,b],[c],R).
%R=[a,b,c]
%
%

%%Reversing a list.
my_reverse([],[]).
my_reverse([H|T],L):- my_reverse(T,R),append(R,[H],L).


% my_reverse([m,e,l,a,n,i,e],R).
%R = [e,i,n,a,l,e,m]


















