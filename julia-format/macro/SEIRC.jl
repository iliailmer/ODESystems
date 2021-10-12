# Ex 2 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
s'(t) = - b * s(t) * i(t) // n,
e'(t) = b * s(t) * i(t) // n - k * e(t),
i'(t) = k * e(t) - g * i(t),
r'(t) = g * i(t),
c'(t) = k * e(t),
y1(t) = c(t)
) 