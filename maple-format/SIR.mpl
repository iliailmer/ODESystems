# Ex 24 from  https://arxiv.org/abs/2006.14295

sigma := [
  diff(S(t), t) = Lam - mu * S(t) + c * ph * (S(t)*In(t))/(S(t) + In(t)),
  diff(In(t), t) = -mu * In(t) + c * ph * (S(t)*In(t))/(S(t) + In(t)) - g * In(t) - In(t) * sgm(t) * (S(t) + In(t)) / (S(t) + In(t)), 
  diff(R(t), t) = -mu * R(t) + g * In(t) - In(t) * sgm(t) * (S(t) + In(t)) / (S(t) + In(t)),
  y1(t) = k * In(t)
]: