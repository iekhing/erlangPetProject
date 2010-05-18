-module (area_server2).
-export ([area/2, start/0]).

start() -> spawn (fun loop/0).

area(Pid, Arg) ->
	rpc(Pid, Arg).


rpc(Pid, Request) ->
	Pid ! {self(), Request},
	receive
		{Pid, Response} ->
			Response
	end.




loop() ->
  receive
    {From, {rectangle, Width, Ht}} ->
	    From ! {self(), Width * Ht},
	    loop();
    {From, {circle, R}} ->
	    From !{self(), 3.14*R*R},
	    loop();
    {From, Other} ->
	    From ! {self(), {errror,Other}},
	   loop()
end.



