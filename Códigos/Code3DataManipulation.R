### Manipulando dados - MURDERS ###

install.packages(dslabs)
library(dslabs)
conjunto.dados <- murders
conjunto.dados

head(murders, n = 4) #Imprime as 6 primeiras posições de dados
tail(murders, n = 2) #Imprime as 6 ultimas posições de dados

str(murders) #Imprime o tipo dos dados que estamos trabalhando no data frame
summary(murders) #Exibe um resumo estatístico dos dados do data frame 

rate <- 100000*murders$total/murders$population #Calculo 
rate

murders <- cbind(murders, rate) #Adicionando a coluna "rate" no banco de dados
murders
str(murders)
murders <- murders[,-c(2,5)]
str(murders)

order(murders$rate)
murders[order(murders$rate)[1:5],]$region

order(murders$rate)[nrow(murders)]

murders[order(murders$rate)[nrow(murders)],]

se.sul <- murders$region == "South"
se.oeste <- murders$region == "West"
se.nordeste <- murders$region == "Northeast"
se.centro <- murders$region == "North Central"

sul <- murders[se.sul, -2]
sul

nordeste <- murders[se.nordeste, -2]
nordeste

oeste <- murders[se.oeste, -2]
oeste

centro <- murders[se.centro, -2]
centro

mean(sul$rate)
mean(oeste$rate)
mean(nordeste$rate)
mean(centro$rate)

#Quantos estados possuem taxa inferior a 1?
#Quem são esses estados?

murders$rate < 1
sum(murders$rate < 1)
murders[murders$rate < 1,1]

any(murders$rate < 1)
menor1 <- which(murders$rate < 1)
length(menor1)
murders$state[menor1]

#AND e OR

murders$rate < 1

murders$region == "West"

(murders$rate < 1)&(murders$region == "West")

murders$state[(murders$rate < 1)&(murders$region == "West")]

(murders$rate < 1)|(murders$rate < 2)

#Linha 216 e 217 são iguais
murders[(murders$rate < 1)|(murders$rate < 2),]$state
murders$state[(murders$rate < 1)|(murders$rate < 2)]

#Gráfico para informações categóricas

table(murders$region)
barplot(table(murders$region), main = "Número de estados por região", las = 1, xlab = "Regiões", ylab = "Quantidade de estados", ylim = c(0,20))

class(table(murders$region))

hist(murders$population)
hist(murders$rate, main = "Distribuição das taxas")

boxplot(murders$rate)

par(mfrow = c(1,2))
boxplot(sul$rate, ylim = c(0, 20), main ="SUL")
boxplot(centro$rate, ylim = c(0, 20), main = "CENTRO NORTE")

boxplot(sul$rate, centro$rate, nordeste$rate, oeste$rate, names = c("SUL", "CENTRO NORTE", "NORDESTE","OESTE") ,main = "Gráfico de comparação")
