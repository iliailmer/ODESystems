# Ex 34 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
s'(t) = Lam - r0 * b * s(t) * i(t) // n - mu * s(t),
e'(t) = b * s(t) * i(t) // n - eps * e(t) - mu * e(t),
i'(t) = eps * e(t) - g * i(t) - mu * i(t),
r'(t) = g * i(t) - mu * r(t),
y1'(t) = i(t)
) 
