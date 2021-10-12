sigma := [
  diff(x1(t), t) = -(k3 + k7) * x1(t) + k4 * x2(t),
  diff(x2(t), t) = k3 * x1(t) - (k4 + a(t) * k5 + b(t) * d(t) * k5) * x2(t) + k6 * x3(t) + k6 * x4(t) + k5 * x2(t) * x3(t) + k5 * x2(t) * x4(t),
  diff(x3(t), t) = a(t) * k5 * x2(t) - k6 * x3(t) - k5 * x2(t) * x3(t),
  diff(x4(t), t) = b(t) * d(t) * k5 * x2(t) - k6 * x4(t) - k5 * x2(t) * x4(t),
  diff(x5(t), t) = k7 * x1(t),
  diff(a(t), t) = 0,
  diff(b(t), t) = 0,
  diff(d(t), t) = 0,
  y1(t) = x5(t),
  y2(t) = a(t),
  y3(t) = b(t),
  y4(t) = d(t)
]:
