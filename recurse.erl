-module(recurse).
-export([length/1, duplicate/2, reverse/1]).

length(List) -> length(List, 0).

length([], Acc) -> Acc;
length([_|T], Acc) -> length(T, Acc + 1).

duplicate(Item, Number) -> duplicate(Item, Number, []).

duplicate(_, 0, Acc) -> Acc;
duplicate(Item, Number, Acc) when Number > 0 -> duplicate(Item, Number - 1, [Item | Acc]).

reverse(List) -> reverse(List, []).

reverse([], Acc) -> Acc;
reverse([Head|Tail], Acc) -> reverse(Tail, [Head|Acc]).
