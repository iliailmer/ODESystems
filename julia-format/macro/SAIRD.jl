# Ex 27 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  S'(t) = -b0 * g * S(t) * In(t) // N(t) - zeta0 * g * S(t) * A(t) // N(t),
  A'(t) =  b0 * g * S(t) * In(t) // N(t) + zeta0 * g * S(t) * A(t) // N(t) - k * A(t),
  In'(t) = k * A(t) - (gam + dlt) * In(t), 
  R'(t) = gam * In(t),
  Dd'(t) = dlt * In(t),
  N'(t) = 0,
  y1'(t) = In(t),
  y2'(t) = R(t)
) 
