
# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  S'(t) = -b * In(t) * S(t),
  In'(t) = b * In(t) * S(t) - g * In(t),
  R'(t) = g * In(t),
  AUX'(t) = 0,
  y1'(t) = In(t),
  y2'(t) = b // g + AUX(t)
]
