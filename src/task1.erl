%% @author Charuni
%% @doc @todo Add description to task2.


-module(task1).

%% ====================================================================
%% API functions
%% ====================================================================
-export([ create_towers/1,display_towers/1]).



%% ====================================================================
%% Internal functions
%% ====================================================================
 create_towers(N) ->
    Game = [{tower1,lists:seq(1,N)} ,{tower2, []}, {tower3,[]}].

display_towers(Game) ->
	 io:format("................................. ~n"),
	
	lists:foldl(fun(X,Cnt) -> 
		case X of 
			{Key, Result} -> io:format("~p: ~w~n", [Key, Result])
		end, 
	Cnt+1 end, 1, Game),
	 io:format("................................. ~n").

