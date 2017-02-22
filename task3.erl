%% @author Charuni
%% @doc @todo Add description to task2.


-module(task3).

%% ====================================================================
%% API functions
%% ====================================================================
-export([ create_towers/1,display_towers/1,move/5,solve/1]).



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

move(1,Game,From,To,Aux) ->
	{Key, Result} =  lists:keyfind(From, 1, Game),
	[H|NewFrom] = Result,
	{Key2, Result2} =  lists:keyfind(To, 1, Game),
	NewTo = [H|Result2],
	NewGame = lists:keyreplace(From,1,lists:keyreplace(To, 1, Game, {To, NewTo}),{From,NewFrom}),
    display_towers(NewGame),
    NewGame;
move(N,Game,From,To,Aux) -> 
   	Game1 = move(N-1,Game,From,Aux,To),
    Game2 = move(1,Game1,From,To,Aux),
    move(N-1,Game2,Aux,To,From).

solve(Game) ->
	{Key, Result} =  lists:keyfind(tower1, 1, Game),
	move(length(Result),Game,tower1,tower3,tower2).



