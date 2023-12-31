# Importar a biblioteca necessária
install.packages("tidyr")
library(ggplot2)

# Dados
amostra <- 1:31
D <- c(8.3, 8.6, 8.8, 10.5, 10.7, 10.8, 11.0, 11.0, 11.1, 11.2, 11.3, 11.4, 11.4, 11.7, 12.0, 12.9, 12.9, 13.3, 13.7, 13.8, 14.0, 14.2, 14.5, 16.0, 16.3, 17.3, 17.5, 17.9, 18.0, 18.0, 20.6)
H <- c(70, 65, 63, 72, 81, 83, 66, 75, 80, 75, 79, 76, 76, 69, 75, 74, 85, 86, 71, 64, 78, 80, 74, 72, 77, 81, 82, 80, 80, 80, 87)
Y <- c(10.3, 10.3, 10.2, 16.4, 18.8, 19.7, 15.6, 18.2, 22.6, 19.9, 24.2, 21.0, 21.4, 21.3, 19.1, 22.2, 33.8, 27.4, 25.7, 24.9, 34.5, 31.7, 36.3, 38.3, 42.6, 55.4, 55.7, 58.3, 51.5, 51.0, 77.0)

# Criar um dataframe com os dados
dados <- data.frame(Amostra = amostra, D = D, H = H, Y = Y)

# Reorganizar os dados para o formato longo
dados_long <- tidyr::gather(dados, key = "Variavel", value = "Valor", -Amostra)

# Criar o boxplot com ggplot2
ggplot(dados_long, aes(x = Variavel, y = Valor, fill = Variavel)) +
  geom_boxplot(width = 0.8, alpha = 0.7) +
  theme_minimal() +
  labs(title = "Boxplot dos Dados",
       x = "Variáveis",
       y = "Valores") +
  scale_fill_manual(values = c("lightblue", "lightblue", "lightblue")) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  theme(axis.text.y = element_text(size = 10)) +
  theme(plot.title = element_text(hjust = 0.5, size = 16, face = "bold")) +
  theme(legend.position = "none") +
  scale_y_continuous(breaks = seq(0, max(dados$Y), by = 10))
