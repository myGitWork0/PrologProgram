parent(thomas,abraham).
parent(abraham,benjamin).
parent(abraham,brondie).
parent(abraham,brown).
parent(brondie,cathy).
parent(brondie,cecil).
parent(brown,chris).
parent(cathy,dane).
parent(cecil,doug).
parent(chris,dune).
parent(dane,eva).
parent(ace,babara).
parent(babara,chuck).
parent(brown,clown).
parent(bradely,chuck).
parent(alton,cathy).
parent(judy,cathy).
wife(cathy,chuck).
male(thomas).
male(ace).
male(brown).
male(benjamin).
male(chuck).
male(alton).
male(bradely).
female(cathy).
female(babara).
female(brondie).
female(kathy).
female(judy).
fatherinlaw(X,Y):- wife(Z,Y),parent(X,Z),male(X).
motherinlaw(X,Y):- wife(Z,Y),parent(X,Z),female(X).
ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- parent(Z,Y),ancestor(X,Z).
des(X,Y):-parent(Y,X).
des(X,Y):-parent(K,X),des(K,Y),X\==Y.
greatgrand(X,Y):-parent(X,L),parent(L,J),parent(J,Y).
sibling(X,Y):-parent(K,X),parent(K,Y),X\==Y.
cousin(X,Y):-parent(Z,X),sibling(K,Z),parent(K,Y),K\==Z,X\==Y.
nephew(X,Y):-parent(M,X),sibling(M,Y),male(X),X\==Y.
uncle(X,Y):-parent(K,Y),sibling(X,K),male(X),X\==K.





















