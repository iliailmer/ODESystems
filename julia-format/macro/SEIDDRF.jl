# Ex 51 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  s'(t) =  -b * s(t) * i(t) // n - q * b * s(t) * Di(t) // n + nu * n - mu0 * s(t),
  e'(t) = b * s(t) * i(t)  - q * b * s(t) * Di(t) // n - sgm * e(t) - theta_e * phi_e * e(t) - mu0 * e(t),
  i'(t) = sgm * i(t) - g * i(t) - mu_i * i(t) - theta_i * phi_i * i(t) - mu0 * i(t),
  De'(t) = theta_e * phi_e * e(t) - sgm_d * De(t) - mu0 * De(t),
  Di'(t) = theta_i * phi_i * i(t) - sgm_d * De(t) - g_d * Di(t) - mu_d * Di(t) - mu0 * Di(t),
  r'(t) = g * i(t) + g_d * Di(t) - mu0 * r(t),
  f'(t) = mu_i * i(t) + mu_d * Di(t),
  y1(t) = s(t),
  y2(t) = i(t),#
  y3(t) = f(t),
  y4(t) = De(t)
) 
