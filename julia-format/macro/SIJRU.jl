# Ex 19 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  S'(t) = -a * (In(t) + Jj(t)) * S(t),
  In'(t) = a * ksi * S(t) * (In(t) + Jj(t)) - b * In(t),
  Jj'(t) = a * (1 - ksi) * S(t) * (In(t) + Jj(t)) - eta * Jj(t), 
  R'(t) = b * In(t),
  U'(t) = eta * Jj(t),
  y1(t) = In(t)
)
