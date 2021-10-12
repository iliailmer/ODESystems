# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  x1'(t) = a * x1(t) - b * x1(t) * x2(t),
  x2'(t) = -c * x2(t) + d * x1(t) * x2(t),
  y(t) = x1(t)
)
