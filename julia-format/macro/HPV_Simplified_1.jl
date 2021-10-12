# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
    IO'(t) = (1 - IO(t) - IG(t) - IOG(t)) * (betaOO * (IO(t) + IOG(t)) + betaGO * (IG(t) + IOG(t))) + gammaG * IOG(t) - IO(t) * (nuOG + gammaO + mu + betaOG * (IO(t) + IOG(t)) + betaGG * (IG(t) + IOG(t))),
    IG'(t) = (1 - IO(t) - IG(t) - IOG(t)) * (betaOG * (IO(t) + IOG(t)) + betaGG * (IG(t) + IOG(t))) + gammaO * IOG(t) - IG(t) * (nuGO + gammaG + mu + betaOO * (IO(t) + IOG(t)) + betaGO * (IG(t) + IOG(t))),
    IOG'(t) = IO(t) * (nuOG + betaOG * (IO(t) + IOG(t)) + betaGG * (IG(t) + IOG(t))) + IG(t) * (nuGO + betaOO * (IO(t) + IOG(t)) + betaGO * (IG(t) + IOG(t))) - IOG(t) * (gammaO + gammaG + mu),
    y1(t) = IG(t) + IOG(t)
    # y2(t) = IO(t),
    # y3(t) = IOG(t)
)

