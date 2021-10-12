# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
    IO'(t) = (1 - IO(t) - IOG(t) - IG(t)) * (betaOO * (IO(t) + IOG(t)) + betaGO * (IG(t) + IOG(t))) + gammaG * IOG(t) - IO(t) * (nuOG + gammaO + mu + betaOG * (IO(t) + IOG(t)) + betaGG * (IG(t) + IOG(t))),
    IG'(t) = (1 - IO(t) - IOG(t) - IG(t)) * (betaOG * (IO(t) + IOG(t)) + betaGG * (IG(t) + IOG(t))) + gammaO * IOG(t) - IG(t) * (nuGO + gammaG + mu + betaOO * (IO(t) + IOG(t)) + betaGO * (IG(t) + IOG(t))),
    IOG'(t) = IO(t) * (nuOG + betaOG * (IO(t) + IOG(t)) + betaGG * (IG(t) + IOG(t))) + IG(t) * (nuGO + betaOO * (IO(t) + IOG(t)) + betaGO * (IG(t) + IOG(t))) - IOG(t) * (gammaO + gammaG + mu),
    y(t) = IO(t) + IOG(t)
)
