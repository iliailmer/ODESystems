sigma := [
  diff(x1(t), t) = expand(a1 * (x2(t) - x1(t))) - (ka * n * x1(t)) / (kc * ka + kc * x3(t) + ka * x1(t)),
  diff(x2(t), t) = expand(a2 * (x1(t) - x2(t))),
  diff(x3(t), t) = expand(b1 * (x4(t) - x3(t))) - (kc * n * x3(t)) / (kc * ka + kc * x3(t) + ka * x1(t)),
  diff(x4(t), t) = expand(b2 * (x3(t) - x4(t))),
  y1(t) = x1(t)
]:
