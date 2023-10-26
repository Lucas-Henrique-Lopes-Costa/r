dados = c(23, 43, 23)
dados[3]

mean(dados)
median(dados)
sd(dados)
var(dados)
min(dados)
max(dados)

summary(dados)

dados[1:2]
dados[2:3]

dados[2:3] - dados[1:2]

dados = c(63,59,86,60,64,66,68,62,63,66,69,60,63,69,71,78,
70,75,75,77,72,72,70,73,74,57,83,85,86,81,87,88,
88,119,95,91,107,94,101,89)

mean(dados)

# Create the moda
getmode <- function(v) {
uniqv <- unique(v)
uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Calculate the mode using the user function.
print(getmode(dados))

median(dados)
sd(dados)
var(dados)
max(dados) - min(dados)
min(dados)
max(dados)

table(dados)
table_freq = table(dados)

median(dados)
summary(dados)

tabela_freq = table(dados)

barplot(tabela_freq)

barplot(tabela_freq,
main='Titulo',
xlab='Texto eixo X',
ylab='Texto eixo Y',
cex.axis=2,
cex.main=2,
cex.lab=2,
col='cyan3',
border=NA)

dados.c <- cut(dados,
breaks=c(0,74, 86,150),
labels=c('A', 'B', 'C'))
dados.c
tabela_freq.c = table(dados.c)

barplot(tabela_freq.c,
main='Exemplo 1',
xlab='Classe',
ylab='Contagem',
cex.lab=1.2,
col='cyan3',
border=NA)