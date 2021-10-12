# Ex 38 from  https://arxiv.org/abs/2006.14295

sigma := [
diff(s(t), t) = - ( c * b + c * q * (1 - q)) * s(t) * (i(t) + theta0 * e(t)) + lmb * sq(t),
diff(e(t), t) = c * b * (1-q) * s(t) * (i(t) + theta0 * e(t)) - sgm(t) * e(t), 
diff(i(t), t) = sgm(t) * e(t) - (dlt_i + alpha_i + g_i) * i(t),
diff(sq(t), t) = c * q  * (1-b) * s(t) * (i(t) + theta0 * e(t)) - lmb * sq(t),
diff(eq(t), t) = c * q  * b * s(t) * (i(t) + theta0 * e(t)) - dlt_q * eq(t),
diff(h(t), t) = dlt_i * i(t) + dlt_q * eq(t) - (alpha + g_h) * h(t),
diff(r(t), t) = g_i * i(t) + g_h * h(t),
y1(t) = i(t) + r(t)
]: 
