-module(recurse).
-export([length/1, duplicate/2, reverse/1, firstN/2]).

length(List) -> length(List, 0).

length([], Acc) -> Acc;
length([_|T], Acc) -> length(T, Acc + 1).

duplicate(Item, N) -> duplicate(Item, N, []).

duplicate(_, 0, Acc) -> Acc;
duplicate(Item, N, Acc) -> duplicate(Item, N - 1, [Item|Acc]).

reverse(List) -> reverse(List, []).

reverse([], Acc) -> Acc;
reverse([H|T], Acc) -> reverse(T, [H|Acc]).

firstN(List, N) -> reverse(firstN(List, N, [])).

firstN([], _, Acc) -> Acc;
firstN(_, 0, Acc) -> Acc;
firstN([H|T], N, Acc) -> firstN(T, N - 1, [H|Acc]).

