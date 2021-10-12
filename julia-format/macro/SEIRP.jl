# Ex 4 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  s'(t) = - a_e * s(t) * e(t) - a_i * s(t) * i(t),
  e'(t) = a_e * s(t) * e(t) + a_i * s(t) * i(t) - k * e(t) - rho * e(t),
  i'(t) = k * e(t) - b * i(t) - mu * i(t),
  r'(t) = b * i(t) + rho * e(t),
  p'(t) = mu * i(t),
  y1'(t) = i(t) + s(t)
) 
