# Ex 27 from  https://arxiv.org/abs/2006.14295

sigma := [
  diff(S(t), t) = -b0 * g * S(t) * In(t)/N(t) - zeta0 * g * S(t) * A(t) / N(t),
  diff(A(t), t) =  b0 * g * S(t) * In(t)/N(t) + zeta0 * g * S(t) * A(t) / N(t) - k * A(t),
  diff(In(t), t) = k * A(t) - (gam + dlt) * In(t), 
  diff(R(t), t) = gam * In(t),
  diff(Dd(t), t) = dlt * In(t),
  diff(N(t), t) = 0,
  y1(t) = In(t),
  y2(t) = R(t)
]: 
