
# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
E'(t) = -alphaEIs * E(t) + betaIa * Ia(t) * S(t) * Ninv + Is(t) * S(t) * Ninv * betaIs + betaT * S(t) * Ninv * T(t) + S(t) * Ninv * betaH * H(t) - E(t) * alphaEIa,
H'(t) = -alphaHT * H(t) + Ia(t) * xi + Is(t) * alphaIsH - alphaHRd * H(t),
Is'(t) = alphaEIs * E(t) + Ia(t) * alphaIaIs - Is(t) * alphaIsT - Is(t) * alphaIsD - Is(t) * alphaIsH - Is(t) * alphaIsRu,
D'(t) = Is(t) * alphaIsD + T(t) * alphaTD,
S'(t) = -betaIa * Ia(t) * S(t) * Ninv - Is(t) * S(t) * Ninv * betaIs - betaT * S(t) * Ninv * T(t) - S(t) * Ninv * betaH * H(t),
Ia'(t) = -Ia(t) * alphaIaRu - Ia(t) * xi - Ia(t) * alphaIaIs + E(t) * alphaEIa,
Rd'(t) = alphaTRd * T(t) + alphaHRd * H(t),
T'(t) = alphaHT * H(t) + Is(t) * alphaIsT - alphaTRd * T(t) - T(t) * alphaTD,
y4(t) = D(t),
y2(t) = T(t),
y3(t) = Rd(t),
y5(t) = Ninv,
y1(t) = H(t)
)
