# Ex 14 from  https:////arxiv.org//abs//2006.14295

# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
s'(t) = mu * n - a * s(t) - b * n * s(t) * i(t) * n - mu * s(t),
e'(t) = b * s(t) * i(t) * n - mu * e(t) - g * e(t),
i'(t) = g * e(t) - dlt * i(t) - mu * i(t) * s(t), # originally has mu * i(t) * mu * s(t)
q'(t) = dlt * i(t) - l(t) * q(t) - k(t) * q(t) - mu * q(t),
r'(t) = l(t) * q(t) - mu * s(t),
d0'(t) = k(t) * q(t),
c'(t) = a * s(t) - mu * c(t) - tau0 * c(t),
y1'(t) = c(t)
# y2'(t) = q(t),
# y3'(t) = d0(t)
) 
