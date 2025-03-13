#Lista Series Temporais -> Lista 1

'''
install.packages("fpp3")
library(fpp3)
install.packages("tidyquant")
library(tidyquant)
'''

#7)a
#dados da AAPL
dados <- tq_get("AAPL")

plot(dados$date,dados$close,type="l",
     main = "AAPL", xlab = "Data",ylab="Fechamento")

#7)b
dados$valores_atualizados <- 0
for (i in 2:nrow(dados)) {
  dados$valores_atualizados[i] <- ((dados$close[i]-dados$close[i-1])/dados$close[i-1])
}

plot(dados$date,dados$valores_atualizados,type = "l")
