edge('Makkah','Madinah').
edge('Madinah','Taif').
edge('Madinah','Tabuk').
edge('Madinah','Qatif').
edge('Madinah','Makkah').
edge('Taif','Dammam').
edge('Tabuk','Taif').
edge('Qatif','Madinah').
edge('Dammam','Qatif').
edge('Dammam','Riyadh').
edge('Riyadh','Dammam').
edge('Makkah','Riyadh').

travel(From,To,Path):-
    path(From,To,[From],P),
    reverse(P,Path).

path(X,X,P,P).
path(X,Y,V,P):-
    edge(X,Z),
    not(member(Z,V)),
    path(Z,Y,[Z|V],P).
