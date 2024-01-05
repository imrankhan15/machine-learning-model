prefix(X,Y) :- append(X,_,Y).

printList([]).
printList(L) :- [H|T] = L, write(H), nl, printList(T).

revprintList([]).
revprintList(L) :- [H|T] = L, revprintList(T), write(H),nl.

empty([]).


my_member(X,L):- [H|T] = L, H==X.
my_member(X,L):- [H|T] = L, H\==X, my_member(X,T).

remove_elem(X,[],[]).
remove_elem(X,L1,L2):- L1=[H|T], X==H, remove_elem(X,T,Temp), L2=Temp.
remove_elem(X,L1,L2):- L1=[H|T], X\==H, remove_elem(X,T,Temp), L2=[H|Temp].


not_empty(L):- \+ empty(L).

len([],0).
len([_|T], N):- len(T,M), N is M+1.

last([X],X).
last(L,X):- member(X,L), append(_,[X],L).

last_member([X],X).
last_member([H|T],X):- last_member(T,X).

