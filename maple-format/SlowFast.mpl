
sigma := [
  diff(xA(t), t) = -k1 * xA(t),
  diff(xB(t), t) = k1 * xA(t) - k2 * xB(t),
  diff(xC(t), t) = k2 * xB(t),
  diff(eA(t), t) = 0,
  diff(eC(t), t) = 0,
  y1(t) = xC(t),
  y2(t) = eA(t) * xA(t) + eB * xB(t) + eC(t) * xC(t),
  y3(t) = eA(t),
  y4(t) = eC(t)
]:
