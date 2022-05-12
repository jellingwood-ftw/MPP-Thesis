library(tidyverse)
library(readr)
library(ggplot2)
library(haven)
library(mlmi)
library(stargazer)

# Vars: 

# plh0388 Häufigkeit Beteiligung in Parteien, Kommunalpolitik, Bürgerinitiativen
# "Participating in political parties, municipal politics, citizens’ initiatives"
# 1 - Daily, 2 - Weekly, 3 - Monthly, 4 - Seldom, 5 - Never

# Haben Sie einen unbefristeten Arbeitsvertrag oder ein befristetes Arbeitsverhältnis?  
# Do you have a fixed-term or permanent employment contract?
# Unbefristeten Arbeitsvertrag/Permanent contract 1
# Befristetes Arbeitsverhältnis/Fixed-term contract 2
# Trifft nicht zu / habe keinen Arbeitsvertrag / Not applicable, 
# do not have an employment contract 3
# 54:pbefr1 bjp bjp_54 Befristung des Arbeitsvertrags
# 54:pbefr1 pl plb0037_h Befristet/unbefristet [harmonisiert]
# 54:pbefr1 pl plb0037_v3 Befristet/unbefristet [2006-2019]



# SOEP Data
soep_core19 <- haven::read_dta("~/Documents/GitHub/Thesis/cs-transfer/pl_en_20192020.dta")

soep2019_IS <- haven::read_dta("~/Documents/GitHub/Thesis/cs-transfer/pgen_IS.dta")
soep2019_core <- filter(soep_pgen, syear == 2019) 

soep2019_IN <- haven::read_dta("~/Documents/GitHub/Thesis/cs-transfer/soep-is.2019_stata_en/inno.dta")
soep2019_IN <- filter(soep2019_IN, syear == 2019)

table(soep2019_IN$syear)
sort(soep2019_IN$syear)