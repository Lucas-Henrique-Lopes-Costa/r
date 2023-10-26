# Carregando bibliotecas necessárias
library(ggplot2)
library(readr)

# Dados fornecidos
dados <-
  c(
    167,
    177,
    148,
    172,
    168,
    189,
    154,
    172,
    170,
    169,
    170,
    156,
    162,
    160,
    168,
    179,
    174,
    178,
    178,
    166,
    162,
    159,
    158,
    160,
    153,
    183,
    174,
    188,
    150,
    180,
    180,
    193,
    184,
    167,
    170,
    180,
    175,
    188,
    157,
    180,
    173,
    178,
    166,
    152,
    160,
    183,
    163,
    175,
    191,
    168,
    186,
    174,
    160,
    179,
    185,
    156,
    170,
    166,
    163,
    172
  )

summary(dados)

# Create the moda
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

# Calculate the mode using the user function.
print(getmode(dados))



# Função de distribuição empírica cumulativa
ecdf_dados <- ecdf(dados)

# Percentil para um indivíduo com 163 cm
percentil_163 <- ecdf_dados(163) * 100

# Percentil para um indivíduo com 190 cm
percentil_190 <- ecdf_dados(190) * 100

# Imprimir os resultados
cat("O indivíduo com 163 cm está no", percentil_163, "percentil.\n")
cat("O indivíduo com 190 cm está no", percentil_190, "percentil.\n")


# Criar um data.frame
dadosFrame <- data.frame(dados)

# Histograma
p1 <- ggplot(dadosFrame, aes(x = dados)) +
  geom_histogram(bins = 10,
                 fill = "skyblue",
                 alpha = 0.5) +
  geom_density(alpha = .2, fill = "#FF6666") +
  labs(title = "Distribuição da Estatura dos Alunos",
       x = "Estatura (cm)",
       y = "Frequência") +
  theme_minimal()

# Boxplot
p2 <- ggplot(dadosFrame, aes(y = dados)) +
  geom_boxplot(fill = "skyblue", alpha = 0.5) +
  labs(title = "Boxplot da Estatura dos Alunos",
       x = "",
       y = "Estatura (cm)") +
  theme_minimal()

# Exibindo os gráficos
print(p1)
print(p2)



# Calcular as frequências
frequencias <- table(dados)

# Calcular as frequências acumuladas
frequencias_acumuladas <- cumsum(frequencias)

# Preparar dados para a ogiva
x <- c(min(dados) - 1, as.numeric(names(frequencias_acumuladas)))
y <- c(0, as.numeric(frequencias_acumuladas))

# Plotar o gráfico de ogiva
plot(
  x,
  y,
  type = "o",
  xlab = "Valores",
  ylab = "Frequência Acumulada",
  main = "Gráfico de Ogiva",
  pch = 19,
  col = "blue",
  xaxt = "n"
)
axis(1, at = x, labels = x)
grid(col = "gray")



# Organize os dados em ordem crescente
dados_ordenados <- sort(dados)

# Divida os dados em 10 períodos
num_periodos <- 10
tamanho_periodo <- length(dados_ordenados) / num_periodos

# Calcule as frequências acumuladas
frequencias_acumuladas <-
  cumsum(table(cut(
    dados_ordenados,
    breaks = seq(min(dados_ordenados),
                 max(dados_ordenados),
                 length.out = num_periodos + 1)
  )))

# Crie o gráfico de ogiva
plot(
  frequencias_acumuladas,
  type = "o",
  xlab = "Classes",
  ylab = "Frequência Acumulada",
  main = "Gráfico de Ogiva",
  col = "blue",
  pch = 19
)
grid (col = "gray")



# Transformar frequências acumuladas em frequências acumuladas relativas
total_observacoes <- sum(frequencias)
frequencias_acumuladas_relativas <-
  (frequencias_acumuladas / total_observacoes) * 100

# Crie o gráfico de ogiva
plot(
  frequencias_acumuladas_relativas,
  type = "o",
  xlab = "Classes",
  ylab =  "Frequência Acumulada (%)",
  main = "Gráfico de Ogiva",
  col = "blue",
  pch = 19,
  ylim = c(0, 100)
)
grid(col = "gray")
