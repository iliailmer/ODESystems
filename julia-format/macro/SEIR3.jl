# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  S'(t) = -b * S(t) * In(t) // N(t),
  E'(t) = b * S(t) * In(t) // N(t) - nu * E(t),
  In'(t) = nu * E(t) - a * In(t),
  N'(t) = 0,
  Cu'(t) = nu * E(t),
  y1(t) = Cu(t),
  y2(t) = N(t)
)
