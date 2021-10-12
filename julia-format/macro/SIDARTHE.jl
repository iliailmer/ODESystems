# Ex 20 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  S'(t) = -S(t) * (a * In(t) + b * Dd(t) + g * A(t) + dlt * R(t)),
  In'(t) = S(t) * (a * In(t) + b * Dd(t) + g * A(t) + dlt * R(t)) - (eps + zeta + lam) * In(t),
  Dd'(t) = eps * In(t) - (eta + rho) * Dd(t),
  A'(t) = zeta * In(t) - (th + mu + kappa) * A(t),
  R'(t) = eta * Dd(t) + th * A(t) - (nu + ksi) * R(t),
  Tt'(t) = mu * A(t) + nu * R(t) - (sgm + ta) * Tt(t),
  Hh'(t) = lam * In(t) + rho * Dd(t) + kappa * A(t) + ksi * R(t) + sgm * Tt(t),
  E'(t) = ta * Tt(t),
  y1(t) = Dd(t) + R(t) + Tt(t),
  y2(t) = R(t),
  y3(t) = Tt(t) 
)