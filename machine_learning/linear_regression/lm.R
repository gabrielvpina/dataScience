# importando dados
data <- mtcars

# correlação simples
cor(data)

# correlação plot
# install.packages("GGally")
library(GGally)
ggpairs(data, ggplot2::aes(fill="#3d85bc", alpha=0.6)) 

# Plot de pontos
library(ggplot2)

# somente pontos
ggplot(data, aes(x=disp, y=wt)) +
  geom_point(size=4, alpha=0.7, color="#3d85bc") +
  theme_minimal()


# Criando modelo linear
model <- lm(data=mtcars, formula = disp ~ wt)
# detalhes do modelo
summary(model)
# equação do modelo
model


# Plot com modelo
ggplot(data, aes(x=disp, y=wt)) +
  geom_point(size=4, alpha=0.7, color="#3d85bc") +
  geom_smooth(method = "lm") +
  theme_minimal()




# ====================================================================================
# DADOS DA SALA

myDf <- read.csv("data/dataset_gemini.csv")

cor(myDf[,c(2:4)])

ggplot(myDf, aes(x=altura,y=numero_pe)) +
  geom_point(size = 4, alpha=0.7, color="darkgreen") +
  theme_classic()

# modelo linear
modelo <- lm(data=myDf, formula=numero_pe ~ altura)
summary(modelo)
modelo


ggplot(myDf, aes(x=altura,y=numero_pe)) +
  geom_point(size = 4, alpha=0.7, color="darkgreen") +
  theme_classic() +
  geom_smooth(method = "lm")