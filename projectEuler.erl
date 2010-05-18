-module(projectEuler).
-export([problem14/1]).
-export([isEvenOrOdd/1]).
-export([nextNumber/2]).

isEvenOrOdd(R)->if R rem 2 =:= 1 -> 
			odd;
		R rem 2 =:= 0 	-> 
			even	
		end.


nextNumber(odd, N)-> 3*N+1;
nextNumber(even,N)-> N div 2.

problem14(1)->1;
problem14(N)-> %:wNextNumber=,
		%io:format ("~w ~w ~w ~n", [N, Test, NextNumber]),
		%io:format ("~w~n", [NextNumber]),
		[N|problem14( nextNumber ( isEvenOrOdd(N),N))].
