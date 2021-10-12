# Ex 51 from  https://arxiv.org/abs/2006.14295

sigma := [
  diff(s(t), t) =  -b * s(t) * i(t) / n - q * b * s(t) * Di(t) / n + nu * n - mu0 * s(t),
  diff(e(t), t) = b * s(t) * i(t)  - q * b * s(t) * Di(t) / n - sgm * e(t) - theta_e * phi_e * e(t) - mu0 * e(t),
  diff(i(t), t) = sgm * i(t) - g * i(t) - mu_i * i(t) - theta_i * phi_i * i(t) - mu0 * i(t),
  diff(De(t), t) = theta_e * phi_e * e(t) - sgm_d * De(t) - mu0 * De(t),
  diff(Di(t), t) = theta_i * phi_i * i(t) - sgm_d * De(t) - g_d * Di(t) - mu_d * Di(t) - mu0 * Di(t),
  diff(r(t), t) = g * i(t) + g_d * Di(t) - mu0 * r(t),
  diff(f(t), t) = mu_i * i(t) + mu_d * Di(t),
  y1(t) = s(t),
  y2(t) = i(t),#
  y3(t) = f(t),
  y4(t) = De(t)
]: 
