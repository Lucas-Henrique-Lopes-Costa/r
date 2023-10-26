dados = c(63,59,86,60,64,66,68,62,63,66,69,60,63,69,71,78,
	70,75,75,77,72,72,70,73,74,57,83,85,86,81,87,88,
	88,119,95,91,107,94,101,89) #pg 59

min(dados)
max(dados)
mean(dados)
median(dados)
summary(dados)

tabela_freq = table(dados)
tabela_freq

barplot(tabela_freq)

barplot(tabela_freq,main='Titulo',xlab='Texto eixo X',
		ylab='Texto eixo Y')

barplot(tabela_freq,main='Titulo',xlab='Texto eixo X',
		ylab='Texto eixo Y', cex.lab=2)
barplot(tabela_freq,main='Titulo',xlab='Texto eixo X',
		ylab='Texto eixo Y', cex.main=2)
barplot(tabela_freq,main='Titulo',xlab='Texto eixo X',
		ylab='Texto eixo Y', cex.axis=2)
barplot(tabela_freq,main='Titulo',xlab='Texto eixo X',
		ylab='Texto eixo Y', cex.axis=2,
		cex.main=2,cex.lab=2)

barplot(tabela_freq,main='Titulo',xlab='Texto eixo X',
		ylab='Texto eixo Y', cex.lab=2, 
		col='cyan3',border=NA)

dados.c <- cut(dados,breaks=c(0,74, 86,150),
			labels=c('A', 'B', 'C')) #menor ou igual
dados.c

tabela_freq.c = table(dados.c)

barplot(tabela_freq.c,main='Exemplo 1',xlab='Classe',
		ylab='Contagem', cex.lab=1.2, 
		col='cyan3',border=NA)

#----- exemplo barbeta------------
dados.b = c(3,3,2,2,3,1,3,3,3,2,2,1,2,2,3,2,3,3,3,3,
		3,3,3,2,2,3,1,3,2,3,3,2,3,1,1,1,3,3,3,3)
n = length(dados.b)
freq_abs = table(dados.b)
freq_abs
freq_rel = freq_abs/n
freq_rel

Ni = cumsum(freq_abs)
Ni
Fi = cumsum(freq_rel)
Fi

barplot(freq_abs,main='Grau de instrução',xlab='',ylab='Contagem',
		cex.lab=1.2, col='cyan3',border=1,names=c('Nenhum','Primeiro','Segundo'))

pie(freq_abs,labels = c('Nenhum','Primeiro Grau','Segundo Grau'),
	col = rainbow(3))

