# using SIAN, StructuralIdentifiability
sigma = @ODEmodel(
  x1'(t) = -k01 * x1(t) + k12 * x2(t) + k13 * x3(t) + k14 * x4(t) - k21 * x1(t) - k31 * x1(t) - k41 * x1(t) + u(t),
  x2'(t) = -k12 * x2(t) + k21 * x1(t), # this one alone: 16.405 
  x3'(t) = -k13 * x3(t) + k31 * x1(t), # this one alone: 15.324, even better together with x2: 9.966
  x4'(t) = -k14 * x4(t) + k41 * x1(t), # this one alone: 16.505, with x2: 11.993, with x3: 14.697
  y1'(t) = x1(t)
)
