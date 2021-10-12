# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
S'(t) = -b * S(t) * Ninv * A(t) * q - b * S(t) * Ninv * II(t) - b * S(t) * Ninv * J(t),
A'(t) = -E(t) * k * r + E(t) * k - A(t) * g1,
E'(t) = b * S(t) * Ninv * A(t) * q + b * S(t) * Ninv * II(t) + b * S(t) * Ninv * J(t) - E(t) * k,
C'(t) = alpha * II(t),
J'(t) = alpha * II(t) - g2 * J(t),
II'(t) = -alpha * II(t) + E(t) * k * r - g1 * II(t),
y2(t) = Ninv,
y(t) = C(t)
)
