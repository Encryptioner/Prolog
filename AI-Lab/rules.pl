sunny.
logic_programming_is_cool.
tomorrow_will_rain.
likes(alice,bob).
likes(bob,carol).
likes(james,mary).
likes(mary,james).
love_compatible(X, Y) :- likes(X, Y), likes(Y, X).
