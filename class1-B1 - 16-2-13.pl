food(apple).
food(orange).
food(mango).
food(guava).

color(apple,red).
color(orange,orange).
color(mango,green).
color(guava,green).
%find foods of same color
%food(X),food(Y),color(X,Z),color(Y,Z),X\==Y.
%show all food names.
showfoods:-food(X),write(X),nl,fail.

father(john,peter).
father(peter,jack).
father(peter,marry).

grandfather(X,Y):-father(X,Z),father(Z,Y).

female(marry).
female(cristine).
male(jack).

sibling(X,Y):-father(Z,X),father(Z,Y),X\==Y.


odd(1).
%odd(X):-X>1,Y is X-2,odd(Y).


odd(X):-odd(Y),X is Y+2.

power(0,2,0).
%power(X,2,R):-power(M,2,P), X is M+1, R is X*X.
power(X,2,R):- Y is X-1, P is Y*Y,power(Y,2,P).


