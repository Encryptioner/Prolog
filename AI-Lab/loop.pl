friend(a,b).
%assert(friend(b,c)). %add this rules to database
%%asserta(friend(c,b)). %add this rules to database reverse query
%retract(friend(b,c)). %delete this rules from database
%%retractall(friend(_,_)). %delete all friend rules from database
%%%retractall(friend(_,c)). %delete all friend rules of c from database





count_to_10(10):- write(10),nl.

count_to_10(X):-
    write(X),nl,
    Y is X+1,
    count_to_10(Y).


count_down(Low,High):-
    between(Low,High,Y),
    Z is High-Y,
    write(Z),nl.

count_up(Low,High):-
    between(Low,High,Y),
    Z is Low+Y,
    write(Z),nl.

guess_num:- loop(start).

loop(15):- write('you guessed it'),nl.

loop(X):-
    X \= 15,
    write('guess number: '),
    read(Guess),
    write(Guess),
    write(' is not the number'),nl,
    loop(Guess).




