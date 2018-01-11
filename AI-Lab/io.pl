position('shojib','lecturer').
position('sohel','Senior lecturer').

find_position:-
    write('Whose position u wanna see?'),nl,
    read(X),nl,
    position(X,Y),nl,
    write(Y).
   % format('~w ~s is ~n', [X,"s position "]).

%find_position.
%shojib.
%ans is showed.

%i/o from file

write_file(File, Text):-
    open(File,write,Stream),
    write(Stream,Text),nl,
    close(Stream).

read_file(File):-
    open(File,read,Stream),
    get_char(Stream, Char1),
    process_stream(Char1, Stream),
    close(Stream).

process_stream(end_of_file,_):-
    !.

process_stream(Char,Stream):-
    write(Char),
    get_char(Stream,Char2),
    process_stream(Char2,Stream).

%write_file('test1.txt', 'random string').
%read_file('test1.txt').

