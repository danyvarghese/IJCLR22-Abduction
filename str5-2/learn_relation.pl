
set(r,10000)?
set(h,10000)?
modeh(1,effect_up(#species,#species))?
modeh(1,effect_down(#species,#species))?


observable(abundance/4)?

abundance(C1,C2,S1,up):-
    presence(C2,S2,yes),
    presence1(C1,S2,no),
    effect_up(S2,S1).

abundance(C1,C2,S1,down):-
    presence(C2,S2,yes),
    presence1(C1,S2,no),
    effect_down(S2,S1).
    
[abundance]?
[species]?
[presence]?
[presence1]?

