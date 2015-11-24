library(questionr)
library(FactoMineR)
library(dplyr)
library(explor)

data(hdv2003)

d <- hdv2003 %>% select(sexe, nivetud, qualif, clso, relig, cuisine, bricol, cinema, sport, age, freres.soeurs)
acm <- MCA(d, quali.sup = 8:9, ind.sup = 1:50, quanti.sup = 10:11, graph = FALSE)
imca(acm)

acm <- MCA(d, ind.sup = 1:50)
imca(acm)