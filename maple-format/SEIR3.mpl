sigma := [
  diff(S(t), t) = -b * S(t) * In(t) / N(t),
  diff(E(t), t) = b * S(t) * In(t) / N(t) - nu * E(t),
  diff(In(t), t) = nu * E(t) - a * In(t),
  diff(N(t), t) = 0,
  diff(Cu(t), t) = nu * E(t),
  y1(t) = Cu(t),
  y2(t) = N(t)
]:
