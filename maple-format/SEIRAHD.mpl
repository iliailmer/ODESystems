# Ex 8 from  https://arxiv.org/abs/2006.14295

sigma := [
diff(s(t), t) = - b(t) * (i(t) + eta * a(t)) * s(t) / n,
diff(e(t), t) = b(t) * (i(t) + eta * a(t)) * s(t) / n - sgm * e(t), 
diff(i(t), t) = alpha * sgm * e(t) - Phi * i(t) - gamma_i * i(t),
diff(a(t), t) = (1-alpha) * sgm * e(t) - gamma_a * a(t),
diff(h(t), t) = Phi * i(t) - dlt * h(t) - gamma_h * h(t),
diff(r(t), t) = gamma_i * i(t) + gamma_a * a(t) + gamma_h * h(t),
diff(d0(t), t) = dlt * h(t),
y1(t) = s(t) + e(t)
]: