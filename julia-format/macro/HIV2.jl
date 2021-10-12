# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  x'(t) = lm - d * x(t) - beta * x(t) * v(t), # this one combined with v
  y'(t) = beta * x(t) * v(t) - a * y(t),
  v'(t) = k * y(t) - u * v(t),
  w'(t) = c * z(t) * y(t) * w(t) - c * q * y(t) * w(t) - b * w(t),
  z'(t) = c * q * y(t) * w(t) - h * z(t),
  y1'(t) = w(t),
  y2'(t) = z(t)
)
