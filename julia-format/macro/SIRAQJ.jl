# Ex 26 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  S'(t) = b * N(t) - S(t) * (In(t) * lam + lam * Q(t) * eps_a * eps_q + lam * eps_a * A(t) + lam * eps_j * Jj(t) + d1),
  In'(t) = k1 * A(t) - (g1 + mu2 + d2) * In(t), 
  R'(t) = g1 * In(t) + g2 * Jj(t) - d3 * R(t),
  A'(t) = S(t) * (In(t) * lam + lam * Q(t) * eps_a * eps_q + lam * eps_a * A(t) + lam * eps_j * Jj(t)) - (k1 + mu1 + d4) * A(t),
  Q'(t) = mu1 * A(t) - (k2 + d5) * Q(t),
  Jj'(t) = k2 * Q(t) + mu2 * In(t) - (g2 + d6) * Jj(t), 
  N'(t) = 0,
  y1'(t) = Q(t),
  y2'(t) = Jj(t)
)
