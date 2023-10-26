###############################
# EXEMPLO (BARBETTA,2002)
###############################

#inserindo os dados
dados <- c(3, 3, 2, 2, 3, 1, 3, 3, 3, 2, 2, 1, 2, 2, 3, 2, 3, 3, 3, 3,
		3, 3, 3, 2, 2, 3, 1, 3, 2, 3, 3, 2, 3, 1, 1, 1, 3, 3, 3, 3)

#nome das categorias (em ordem correspondente aos valores dos dados)
label = c("Nenhum grau ","Primeiro grau","Segundo grau")

#tamanho da amostra
n = length(dados)

#frequência absoluta
freq.abs = table(dados)
freq.abs

#frequência absoluta acumulada
freq.abs.acumulada = cumsum(freq.abs)
freq.abs.acumulada

#frequência relativa
freq.rel = freq.abs/n
freq.rel

#frequência relativa em porcentagem
freq.rel*100

#frequência relativa acumulada
freq.rel.acumulada = cumsum(freq.rel)
freq.rel.acumulada

#tabela de frequências
cbind(freq.abs,freq.abs.acumulada,freq.rel,freq.rel.acumulada)

#gráfico de barras
barplot(freq.abs,names.arg=label,main='Grau de instrução',
		ylab='Frequência absoluta',xlab='',
		col='lightblue',border=1)

#gráfico de pizza
pie(freq.abs, labels = label,col = rainbow(3))

piepercent = round(100*freq.rel, 1)
pie(freq.rel, labels = paste0(piepercent,"%"),col = rainbow(3),clockwise=T)
legend("topleft", label, cex = 0.8,fill = rainbow(3))


#####################################
# EXEMPLO: quantidade de animais 
# de estimação por residência
#####################################
x = c(1 ,3 ,2 ,4 ,4 ,0 ,2 ,4 ,2 ,2 ,5 ,2 ,3 ,2 ,0 ,4 ,1 ,0 ,1 ,5)

#tamanho da amostra
n = length(x)

#frequência absoluta
freq.abs = table(x)
freq.abs

#frequência absoluta acumulada
freq.abs.acumulada = cumsum(freq.abs)
freq.abs.acumulada

#frequência relativa
freq.rel = freq.abs/n
freq.rel

#frequência relativa em porcentagem
freq.rel*100

#frequência relativa acumulada
freq.rel.acumulada = cumsum(freq.rel)
freq.rel.acumulada

#tabela de frequências
cbind(freq.abs,freq.abs.acumulada,freq.rel,freq.rel.acumulada)

label = names(freq.abs)
numero_label = length(label)
#gráfico de barras
barplot(freq.abs,names.arg=label,
		main='Quantidade de animais de estimação\npor residência',
		ylab='Frequência absoluta',xlab='',
		col='lightblue',border=1)

#gráfico de pizza
pie(freq.abs, labels = label,col = rainbow(numero_label))

piepercent = round(100*freq.rel, 1)
pie(freq.rel, labels = paste0(piepercent,"%"),
	col = rainbow(numero_label),clockwise=T)
legend("topleft", label, cex = 0.8,fill = rainbow(numero_label))


###############################
# EXEMPLO (BARBETTA,2002)
###############################

grau_instrucao = matrix(c(31,22,25,
				  7,16,19),
				ncol=3,byrow=T)
rownames(grau_instrucao) = c('sim','nao')
colnames(grau_instrucao) = 1:3
grau_instrucao
total_linha = rowSums(grau_instrucao)
total_linha
total_coluna = colSums(grau_instrucao)
total_coluna
total = sum(grau_instrucao)
total

#proporcao linha 
grau_instrucao[1,] / sum(grau_instrucao[1,]) #linha 1
grau_instrucao[2,] / sum(grau_instrucao[2,]) #linha 2

proporcao_linha  = apply(grau_instrucao,1,function(x) x/sum(x))
proporcao_linha*100
proporcao_coluna = apply(grau_instrucao,2,function(x) x/sum(x))
proporcao_coluna*100


###############################
# EXEMPLO: Taxa de mortalidade
###############################

tx_mun = c(32.3,62.2,10.3,22.0,13.1,9.9,11.9,20.0,36.4,23.5,18.0,22.6,
		20.3,38.3,19.6,27.2,28.9,18.4,27.3,21.7,23.7,13.9,36.3,32.9,
		29.7,25.4,23.8,15.7,17.0,39.2,22.7,29.9,18.3,33.0)
#tamanho dos dados
n = length(tx_mun)

summary(tx_mun)

#limite de classe
limc= seq(0,70,by=10)

freq = hist(tx_mun,breaks = limc,plot=F,right=F)

#frequência absoluta
freq.abs = freq$counts
freq.abs

#frequência absoluta acumulada
freq.abs.acumulada = cumsum(freq.abs)
freq.abs.acumulada

#frequência relativa
freq.rel = freq.abs/n
freq.rel

#frequência relativa em porcentagem
freq.rel*100

#frequência relativa acumulada
freq.rel.acumulada = cumsum(freq.rel)
freq.rel.acumulada

#tabela de frequências
cbind(freq.abs,freq.abs.acumulada,freq.rel,freq.rel.acumulada)

#Gráfico de histograma
hist(tx_mun,breaks = limc,
		main='Taxa de mortalidade infantil',
		ylab='Densidade de frequência', 
		xlab='',probability=T,
		col='firebrick1')

plot(limc,c(0,freq.rel.acumulada)*100,
	type='o',xlab='Taxa de mortalidade infantil',
	ylab='Frequência relativa acumulada (%)')
abline(v = seq(0,70,by=5), lty = 2, col = "gray")
abline(h = seq(0,100,by=10), lty = 2, col = "gray")


###############################
# EXEMPLO: Peso de alunos
###############################

peso_h <- c(72.8, 80.9, 60.0, 68.5, 85.2, 73.0, 87.0, 95.0, 84.0, 73.0,
		 75.0, 71.0, 86.0)

peso_m <- c(60.5, 55.0, 55.0, 58.0, 47.0, 57.8, 58.0, 70.0, 54.0, 58.0,
		 63.5, 47.4, 66.0, 54.5, 52.5, 60.0, 58.5, 49.2, 48.0, 51.6,
		 57.0, 63.0, 52.0, 49.0, 59.0, 52.0, 56.0, 58.0, 47.0, 60.0,
		 55.0, 44.0, 55.0, 49.0, 50.0, 54.5, 50.0)

summary(peso_h)
summary(peso_m)

n_h = length(peso_h)
n_m = length(peso_m)

classes= seq(40,95,by=5)

#tabela de frequencia - homens
freq = hist(peso_h,breaks = classes,plot=F,right=F)

freq.abs.h = freq$counts 		 #frequencia absoluta
freq.abs.h.acum = cumsum(freq.abs.h) #frequencia absoluta acumulada
freq.rel.h = freq.abs.h/n_h 		 #frequencia relativa
freq.rel.h.acum = cumsum(freq.rel.h) #frequencia relativa acumulada

#tabela de frequencia - mulheres
freq = hist(peso_m,breaks = classes,plot=F,right=F)

freq.abs.m = freq$counts 		 #frequencia absoluta
freq.abs.m.acum = cumsum(freq.abs.m) #frequencia absoluta acumulada
freq.rel.m = freq.abs.m/n_m 		 #frequencia relativa
freq.rel.m.acum = cumsum(freq.rel.m) #frequencia relativa acumulada

#tabela 
cbind(freq.abs.h,freq.abs.h.acum,
	freq.rel.h,freq.rel.h.acum,
	freq.abs.m,freq.abs.m.acum,
	freq.rel.m,freq.rel.m.acum)

#histogramas
par(mfrow=c(1,3))
hist(peso_h,breaks=classes,right=F,
	xlab="Peso (Kg)",ylab="Frequência",probability=T,
	main="Homens",ylim=c(0,.1),
	col='goldenrod1')
hist(peso_m,breaks=classes,right=F,
	xlab="Peso (Kg)",ylab="Frequência",probability=T,
	main="Mulheres",ylim=c(0,.1),
	col='firebrick1')

#Gráfico de Ogiva
plot(classes,c(0,freq.rel.h.acum)*100,type='l', lwd=2,
	xlab='Peso (kg)',ylab='Frequência relativa acumulada (%)',
	col='goldenrod1')
lines(classes,c(0,freq.rel.m.acum)*100,col='firebrick1',lwd=2)
legend("bottomright",lwd=2,col=c('goldenrod1','firebrick1'),
	bty='n',legend=c("Homens","Mulheres"))








