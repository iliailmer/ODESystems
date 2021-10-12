# Ex 21 from  https://arxiv.org/abs/2006.14295

sigma := [
  diff(S(t), t) = -b * S(t) * i(t) / N - p* S(t) +q * C(t),
  diff(i(t), t) = b * S(t) * i(t) / N - (r - mu) * i(t),
  diff(R(t), t) = r * i(t),
  diff(Cc(t), t) = p*S(t) - q*Cc(t),
  diff(D(t), t) = mu * i(t),
  y1(t) = i(t)
]: