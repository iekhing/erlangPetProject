-module(test).
-export([fac/1]).
-export([helloWorld/0]).

fac(0) -> 1;
fac(N) -> N * fac(N-1).

helloWorld()->"Hello World".

