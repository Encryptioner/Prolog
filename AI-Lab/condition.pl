%check which number is bigger
%
go:-write('input the number1: '),nl,
    read(X),nl,
    write('input the number2: '),nl,
    read(Y),nl,
    compare(X,Y).

compare(X,Y):-
    nl,
    X>Y,
    write(X),
    write(' is bigger value');
    X<Y,
    write(Y),
    write(' is bigger value'),
    nl.


