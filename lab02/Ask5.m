### arithmitiki -> 0.5

Dt= 0.0001;                       # to bima tis synartisis
t = -1000 + Dt : Dt :1000;        # to diasthma-oi times poy pairnei to t
x = exp(-2*abs(t));               # tipos tis dikis mas synartisis
x_sq = x.^2;                      # tipos olokliromatos energeias(GENIKOS)
result = Dt * sum(x_sq)           # antikatastasi dikias mou sinartisis ston pano tipo toy olokliromatos
#disp(result);                    # tiposi apotelesmatos (result)


### simvoliki -> 0.5

syms t;                           # gia tin syms balame tin antistoixi library pkg load symbolic prin to trexoyme
result = int(sq_x, t, -inf, inf); 
disp(result);                     # tiposi apotelesmatos (result)
