### EXEMPLO DE MATEMÁTICA BASE
1+1
4-2
8/4
10*2

exp(1)
log(x = 10, base = exp(1))

### ERROS EM QUE O CÓDIGO NÃO É LIDO PELO PROGRAMA
651321*S&POOP(ASDA&p1312)
c

### OPERAÇÕES LÓGICAS PODEM SER EXECUTADAS PELO R

### COMPARANDO...
2==2
2==3
2+2==2+3
2*7==3*2

2!=2
4!=12

2<5
9>10

3>=5
7<=12

### TRABALHANDO COM STRINGS
"internet"

### UTILIZAMOS TAMBÉM OPERADORES LÓGICOS PARA COMPARAR STRINGS
"internet"=="Internet"
"global"!="cake"

#### Se você comparar strings a partir de uma desigualdade, então o R comparará o tamanho das strings
"apple" < "banana"
"banana" > "orange"

### ATRIBUINDO VALORES A UM OBJETO
b <- 2+1
valor_x <- 2*2
valor.y <- 10/5
texto <- "james"

### NÃO É VALIDO INICIAR O NOME DE UMA VARIÁVEL POR UM NÚMERO, E TAMBÉM NÃO É PERMITIDO ESPAÇOS ENTRE O NOME DE UMA VARIÁVEL
8P <- 2*12
variavel l <- 2*4

### OPERAÇÕES COM AS VARÁVEIS CRIADAS
b
b*b
b^3
class(a)


#### Você pode criar um vetor númerico ou com strings, por exemplo, utilizando a função "combine" ou também conhecida por "concatenate", c().
numeros <- c(1,2,3)
numeros
texto <- c("a","b")
texto
numeros2 <- 10:34
numeros2

sim_nao <- c(TRUE,FALSE,TRUE)
sim_nao

### COMBINAÇÃO DE VETORES
numeros3 <- c(numeros, numeros2)
numeros3

##### Você pode selecionar certos elementos de um vetor:
x <- c(-1,10,11,12,13,14,15,16,17,18,19)

### Escolhendo elementos de acordo com a posição
X[4] #quarto elemento
x[-4] #todos os elementos, exceto o quarto
x[2:4] #os elementos da segunda posição até a quarta
x[-(2:4)] #todos os elementos, execeto aqueles da segunda posição até a quarta
x[c(1, 5)] #elementos da primeira e quinta posição


### ESCOLHENDO ELEMENTOS PELO VALOR...
x[x == 10]
x[x < 0]

#### Quando você salva diferentes tipos de dados, esses dados recebem uma "classe" que descreve quais tipos de dados estão no vetor

class(numeros)
class(texto)
class(sim_nao)

### O QUE ACONTECE SE COMBINARMOS NÚMEROS E STRINGS?
vetor_combinado <- c(numeros, texto)
vetor_combinado # A LEITURA FEITA É TOTALMENTE COMO STRING E NÃO HÁ SEPARAÇÃO DO QUE É NÚMERO E STRING

### UTILIZANDO SET.SEED
set.seed(38)
runif(1)
                    
set.seed(4)
runif(1)

### TESTES DA AULA ###
set.seed(4)
runif(3)

a = 2
a

#criando vetores

v <- c(12,10,8)
v[2]
v[1]
v[3]
v[c(1,2,3)]

a <- 1:100
a[50:100]


sample(10)
w <- c(2,4,6)
z <- c(10,25,12)

z[c(1,3)]
z < 10
sum(z < 10)

z + 12

w <- c(10,8,14,22,11,7)
z <- c(1,1,11,30)
z + w
z - w

k <- c("AS","MELHORES","COISAS","DO","MUNDO")
n <- c("ESTÃO","AO","SEU","REDOR")

frase_motivadora <- c(k,n)
frase_motivadora

runif(1)

set.seed(38)
runif(1)





f <- c(10,15,20,25,30,35,40,45,50)

f%%2 == 0

f[c(TRUE,TRUE)][f%%2 == 0][c(1,2)]
