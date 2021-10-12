# Ex 35 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  S'(t) = mu * N(t) - b * S(t) * In(t) - (g + eta) * S(t) + dlt * LL(t),
  LL'(t) =  eta * S(t) - (g + dlt) * LL(t),
  In'(t) = b * S(t) * In(t) - (g + theta1 + alpha1) * In(t),
  Q'(t) = theta1 * In(t) - (g + alpha2) * Q(t),
  R'(t) = alpha1 * In(t) + alpha2 * Q(t) - g * R(t),
  N'(t) = 0,
  y1(t) = Q(t),
  y2(t) = LL(t)
) 
