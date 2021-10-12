# Ex 8 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
s'(t) = - b(t) * (i(t) + eta * a(t)) * s(t) // n,
e'(t) = b(t) * (i(t) + eta * a(t)) * s(t) // n - sgm * e(t), 
i'(t) = alpha * sgm * e(t) - Phi * i(t) - gamma_i * i(t),
a'(t) = (1 - alpha) * sgm * e(t) - gamma_a * a(t),
h'(t) = Phi * i(t) - dlt * h(t) - gamma_h * h(t),
r'(t) = gamma_i * i(t) + gamma_a * a(t) + gamma_h * h(t),
d0'(t) = dlt * h(t),
y1'(t) = s(t) + e(t)
)