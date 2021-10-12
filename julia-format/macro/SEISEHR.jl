# Ex 38 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
s'(t) = - ( c * b + c * q * (1 - q)) * s(t) * (i(t) + theta0 * e(t)) + lmb * sq(t),
e'(t) = c * b * (1 - q) * s(t) * (i(t) + theta0 * e(t)) - sgm(t) * e(t), 
i'(t) = sgm(t) * e(t) - (dlt_i + alpha_i + g_i) * i(t),
sq'(t) = c * q  * (1 - b) * s(t) * (i(t) + theta0 * e(t)) - lmb * sq(t),
eq'(t) = c * q  * b * s(t) * (i(t) + theta0 * e(t)) - dlt_q * eq(t),
h'(t) = dlt_i * i(t) + dlt_q * eq(t) - (alpha + g_h) * h(t),
r'(t) = g_i * i(t) + g_h * h(t),
y1(t) = i(t) + r(t)
) 
