-module(mathList).
-export([even/2]).
-export([isEven/1]).
-export([even2/2]).


isEven(N)->N rem 2 == 0.


even(Max,Max)-> Test=1,
		Test2=2,
	IsEven = isEven(Max),
		if 
		 IsEven->Max;
		 true ->[]
	       end;
even(Min,Max)->IsEven = isEven(Min),
	if IsEven ->
		 [Min|even(Min+1,Max)];
        true->even(Min+1, Max)
	       end.

even2(Min, Max)->[X||X<-lists:seq(Min, Max), isEven(X) == true].
