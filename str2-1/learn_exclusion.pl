
set(r,10000)?
set(h,10000)?
modeh(1,effect_up(#species,#species))?
modeh(1,effect_down(#species,#species))?


observable(presence/3)?


presence(C2,S2,yes):-
    presence1(C1,S2,no),
    abundance(C1,C2,S1,up),
    effect_up(S2,S1).

presence(C2,S2,yes):-
   presence1(C1,S2,no),
   abundance(C1,C2,S1,down),
   effect_down(S2,S1).

presence(C2,S2,yes):-
   presence1(C1,S2,no),
   presence(C2,S1,no),
   effect_down(S2,S1).

    
[abundance]?
[species]?
[presence]?
[presence1]?

