
# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  s'(t) = mu - mu * s(t) - b0 * (1 + b1 * x1(t)) * i(t) * s(t) + g * r(t),
  i'(t) = b0 * (1 + b1 * x1(t)) * i(t) * s(t) - (nu + mu) * i(t),
  r'(t) = nu * i(t) - (mu + g) * r(t),
  x1'(t) = -M * x2(t),
  x2'(t) = M * x1(t), # this one works well: x2=> x2^2
  y1(t) = i(t),
  y2(t) = r(t)
)
