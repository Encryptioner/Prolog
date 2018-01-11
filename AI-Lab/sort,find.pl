on(Item,[DisregardHead|Tail]):-
	Item is Item+1,
	on(Item,Tail).
on(Item,[Head|Tail]):-
	Item>2,
	write(Head).
sum:-
	X is 3+3,write(X).
listi([p,q,r]).
what_is([Head|Tail]):-listi([Head|Tail]).
ascending(L,L1):-
	(   asrt(L,L2)
	->  ascending(L2,L1)
	; L=L1).
asrt([A,B|T],L):-
	(   A>B
	->   L= [B, A|T]
	;   L= [A|L1],
	    asrt([B|T],L1)).

descending(L,L1):-
	(   dsrt(L,L2)
	->  descending(L2,L1)
	; L=L1).
dsrt([A,B|T],L):-
	(   A<B
	->   L= [B, A|T]
	;   L= [A|L1],
	    dsrt([B|T],L1)).
find([],N,false):-N>0.
find([H|_],1,H):-
	write(H).
find([_|T],N,R):-
	N1 is N-1,
	find(T,N1,R).
finditem(Item,[Item|_],N):-
	write(N).
finditem(Item,[Head|Tail],R):-
	N1 is R+1,
	finditem(Item,Tail,N1).
