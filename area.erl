-module (area_server2).
-export ([loop/0]).

loop() ->
  receive
    {rectangle, Width, Ht} ->
	    io:format ("area of rectangle is ~p~n", [Width * Ht]),
	    loop();
    {circle, R}->
	    io:format ("area of circle is ~p~n", [3.14*R*R]),
	    loop();
   Other->
	   io:format("unknown format of a ~p is ~n", [Other]),
	   loop()
end.



