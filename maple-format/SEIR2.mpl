# Ex 16 from  https://arxiv.org/abs/2006.14295

sigma := [
diff(s(t), t) = -b * s(t) * i(t),
diff(e(t), t) = b * s(t) * i(t) - eps * e(t),
diff(i(t), t) = eps * e(t) - (rho + mu) * i(t),
diff(r(t), t) = rho * i(t) - d0 * r(t),
y1(t) = r(t),
y2(t) = e(t)
]:
