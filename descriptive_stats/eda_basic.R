# SCRIPT para aula


#====================================================================
# Importar dados da aula
alunos <- read.csv("levantamento_aula.tsv", sep="\t")

# Gráfico de disperção - scatter plot
## Importando  pacote ggplot2
library(ggplot2)

# Altura vs. Idade
sctr1 <- ggplot(data = alunos, aes(x=altura, y=idade)) +
  geom_point(size=4) +
  ggtitle("Altura vs. Idade")
sctr1

# Altura vs. Tamanho calçado
sctr2 <- ggplot(data = alunos, aes(x=altura, y=numero_pe)) +
  geom_point(size=4) +
  ggtitle("Altura vs. Tamanho do calçado")
sctr2
## Vemos uma leve correlação





# USANDO DADOS DO GEMINI - + 30 linhass
# EXPANDINDO DATASET
fake <- read.csv("dataset_gemini.csv")

# Altura vs. Idade
fake2 <- ggplot(data = fake, aes(x=altura, y=idade)) +
  geom_point(size=4) +
  ggtitle("Altura vs. Idade")
fake2

# Altura vs. Tamanho calçado
fake1 <- ggplot(data = fake, aes(x=altura, y=numero_pe)) +
  geom_point(size=4) +
  ggtitle("Altura vs. Tamanho do calçado")
fake1
#====================================================================








#====================================================================
# Importar pacote com bancos de dados diversos
library(datasets)
library(help = "datasets")
