-module(forLoop).
-export([forLoop/3]).


forLoop(Max,Max,F)->F(Max);
forLoop(Min,Max,F)->[F(Min)|forLoop(Min+1,Max,F)].

