# Data
ag <-covid19.data(case= "aggregated")
tsc <-covid19.data(case = "ts-confirmed")
#summary
report.summary(Nentries = 10,
               graphical.output = TRUE)

#TOTAL CASES AS PER LOCATION
tots.per.location(tsc,geo.loc="india")
tots.per.location(tsc,geo.loc= c("iran","india","pakistan","france"))

# growth rate 
growth.rate(tsc,geo.loc = "India")
growth.rate(tsc,geo.loc= c("india","france"))

# worls map
live.map(tsc)

# sir model(fealthy but susceptible to diseases)
generate.SIR.model(tsc, "India", tot.population = 170000000)

