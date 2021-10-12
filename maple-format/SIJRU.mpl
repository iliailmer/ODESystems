# Ex 19 from  https://arxiv.org/abs/2006.14295

sigma := [
  diff(S(t), t) = -a * (In(t)+Jj(t)) * S(t),
  diff(In(t), t) = a * ksi * S(t) * (In(t)+Jj(t)) - b * In(t),
  diff(Jj(t), t) = a * (1 - ksi) * S(t) * (In(t)+Jj(t)) - eta * Jj(t), 
  diff(R(t), t) = b * In(t),
  diff(U(t), t) = eta * Jj(t),
  y1(t) = In(t)
]:
