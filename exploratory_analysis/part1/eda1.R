# Aula prática 04-09-2025

# Importar dataset
df <- read.csv("exploratory_analysis/gapminder_error.csv", header=TRUE)

# Checar coisas básicas
## dimensões da tabela
dim(df)
## colunas
colnames(df)
## começo da tabela
head(df)


# Resumo da tabela
summary(df)


# Esses números estão corretos? Classes
class(df)
class(df$LifeExpectancy)
class(df$Population)
## Colunas que deveriam ser númericas não estão numéricas

# transformar em numérico - remover variáveis não-numéricas
df$LifeExpectancy <- as.numeric(df$LifeExpectancy)
## resumir
summary(df)

# transformar novamente
df$Population <- as.numeric(df$Population)
summary(df)





# Checar itens repetidos
duplicated(df)
## Quantidade de duplicados
table(duplicated(df))
## Remover itens duplicados
df2 <- unique(df)
table(duplicated(df2))




# Remover valores incorretos - Expectativa de vida
summary(df2)
## Expectativa de vida muito acima do normal
df2[df2$LifeExpectancy == 142.10, ]
## Checar se existem outras
df2[df2$LifeExpectancy >= 100, ]
## Remover outlier
df2 <- df2[-131,]
## Checar com summary()
summary(df2)




# Remover valores incorretos - População
df2[df2$Population == 1.840e+02, ]
df2[df2$Country == "Uruguay", ]
df2[df2$Population <= 1e+03, ]

## Remover outlier - removendo com filtro (RECOMENDADO: remover múltiplos itens)
df2 <- df2[df2$Population >= 1000, ] 
## Checar remoção
df2[df2$Country == "Uruguay", ]
## Checar tabela
summary(df2)
