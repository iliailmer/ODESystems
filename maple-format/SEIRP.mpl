# Ex 4 from  https://arxiv.org/abs/2006.14295

sigma := [
  diff(s(t), t) = - a_e * s(t) * e(t) - a_i * s(t) * i(t),
  diff(e(t), t) = a_e * s(t) * e(t) + a_i * s(t) * i(t) - k * e(t) - rho * e(t),
  diff(i(t), t) = k * e(t) - b * i(t) - mu * i(t),
  diff(r(t), t) = b * i(t) + rho * e(t),
  diff(p(t), t) = mu * i(t),
  y1(t) = i(t) + s(t)
]: 
