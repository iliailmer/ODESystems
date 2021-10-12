# Ex 21 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  S'(t) = -b * S(t) * i(t) // N - p * S(t) + q * C(t),
  i'(t) = b * S(t) * i(t) // N - (r - mu) * i(t),
  R'(t) = r * i(t),
  Cc'(t) = p * S(t) - q * Cc(t),
  D'(t) = mu * i(t),
  y1'(t) = i(t)
)