# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  x1'(t) = a1 * (x2(t) - x1(t))) - (ka * n * x1(t)) // (kc * ka + kc * x3(t) + ka * x1(t),
  x2'(t) = a2 * (x1(t) - x2(t)),
  x3'(t) = b1 * (x4(t) - x3(t))) - (kc * n * x3(t)) // (kc * ka + kc * x3(t) + ka * x1(t),
  x4'(t) = b2 * (x3(t) - x4(t)),
  y1(t) = x1(t)
)
