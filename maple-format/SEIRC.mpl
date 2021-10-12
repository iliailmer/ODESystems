# Ex 2 from  https://arxiv.org/abs/2006.14295

sigma := [
diff(s(t), t) = - b * s(t) * i(t) / n,
diff(e(t), t) = b * s(t) * i(t) / n - k * e(t),
diff(i(t), t) = k * e(t) - g * i(t),
diff(r(t), t) = g * i(t),
diff(c(t), t) = k * e(t),
y1(t) = c(t)
]: 