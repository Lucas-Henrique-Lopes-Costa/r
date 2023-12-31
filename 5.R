#---- Medidas de Tend�ncia Central ----#
ex1 = c(4,5,5,6,6,7,7,8)

mean(ex1)
median(ex1)
table(ex1)

ex2 = c(1,1,2,2,3,3)

mean(ex2)
median(ex2)
table(ex2)

ex3 = c(rep(0,4),rep(1,5),rep(2,7),rep(3,3),rep(5,1))

mean(ex3)
median(ex3)
table(ex3)

ex4 = c(6,7,7,7,8,20)

mean(ex4)
median(ex4)
table(ex4)

ex4b = c(6,7,7,7,8)

mean(ex4b)
median(ex4b)
table(ex4b)

#---- Medidas de Variabilidade ----#
#---- Exemplo: dados com mesma m�dia e vari�ncia diferentes ----#

A = c( 3, 4 ,5, 6, 7)
B = c( 1, 3, 5, 7, 9)
C = c( 5, 5, 5, 5, 5)
D = c( 3, 5, 5, 7)
E = c( 3, 5, 5, 6, 6)

#  M�DIA

mean(A)
mean(B)
mean(C)
mean(D)
mean(E)

# AMPLITUDE TOTAL

max(A)-min(A)
max(B)-min(B)
max(C)-min(C)
max(D)-min(D)
max(E)-min(E)

# VARI�NCIA

var(A)
var(B)
var(C)
var(D)
var(E)

# Desvio padr�o

sd(A)
sd(B)
sd(C)
sd(D)
sd(E)



