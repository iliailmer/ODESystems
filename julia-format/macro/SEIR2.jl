# Ex 16 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
s'(t) = -b * s(t) * i(t),
e'(t) = b * s(t) * i(t) - eps * e(t),
i'(t) = eps * e(t) - (rho + mu) * i(t),
r'(t) = rho * i(t) - d0 * r(t),
y1(t) = r(t),
y2(t) = e(t)
)
