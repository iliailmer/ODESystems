# Ex 35 from  https://arxiv.org/abs/2006.14295

sigma := [
  diff(S(t), t) = mu * N(t) - b * S(t) * In(t) - (g + eta) * S(t) + dlt * LL(t),
  diff(LL(t), t) =  eta * S(t) - (g + dlt) * LL(t),
  diff(In(t), t) = b * S(t) * In(t) - (g + theta1 + alpha1) * In(t),
  diff(Q(t), t) = theta1 * In(t) - (g + alpha2) * Q(t),
  diff(R(t), t) = alpha1 * In(t) + alpha2 * Q(t) - g * R(t),
  diff(N(t), t) = 0,
  y1(t) = Q(t),
  y2(t) = LL(t)
]: 
