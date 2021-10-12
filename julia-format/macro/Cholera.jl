# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  s'(t) = mu - bi * s(t) * i(t) - bw * s(t) * w(t) - mu * s(t) + al * r(t),
  i'(t) = bw * s(t) * w(t) + bi * s(t) * i(t) - g * i(t) - mu * i(t),
  w'(t) = dz * (i(t) - w(t)),
  r'(t) = g * i(t) - mu * r(t) - al * r(t),
  y1(t) = k * i(t),
  y2(t) = i(t) + r(t) + s(t)
)
