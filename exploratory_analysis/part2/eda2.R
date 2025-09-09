# PARTE 1 - Prospecção básica

## Importar datasets básicos do R
library(datasets)
library(help = "datasets")

## Selecionar dataset específico
iris <- datasets::iris
### Checar composição
head(iris)
dim(iris)



## Mostrar numero de valores ausentes (NAs)
sum(is.na(iris)) 
### Mostrar NAs por coluna
colSums(is.na(iris))

## Sumário básico
summary(iris)


# PARTE 2 - Conceitos Importantes de EDA

## Relembrando - Funções de Medidas de Tendência Central

### Média
mean(iris$Sepal.Length)
mean(iris$Petal.Length)
### Mediana
median(iris$Sepal.Length)
median(iris$Species)

## Funções de Medidas de Dispersão

### Mínimo e Máximo
min(iris$Sepal.Length)
max(iris$Sepal.Length)

### Variância e Desvio Padrão (sd)
var(iris$Sepal.Length)
sd(iris$Sepal.Length)
## O desvio padrão é representado pela mesma unidade de medida dos dados

## Funções de Medidas de Relacionamento

### COVARIÂNCIA
### Calcula a covariância entre duas variáveis. Ela indica a direção da relação linear entre elas.
### Uma covariância positiva indica que as variáveis se movem na mesma direção (quando uma aumenta, a outra tende a aumentar)
### E vice-versa
cov(iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")])
### Ou
cov(iris[, c(1:4)])


### CORRELAÇÃO
### Calcula a correlação, que também mede a força e a direção da relação linear entre duas variáveis. 
### A grande vantagem é que o valor de correlação é padronizado e varia de -1 a 1.

### Correlação próxima de 1: Relação linear positiva forte.
### Correlação próxima de -1: Relação linear negativa forte.
### Correlação próxima de 0: Nenhuma relação linear.

cor(iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")])


# PARTE 3 - Pacotes específicos para EDA

## Instalar pacote "skimr"
## install.packages("skimr")

library(skimr)

## Testando com os nossos dados
skim(iris)


## Instalar pacote "Summarytools"
## install.packages("summarytools")

## ATENÇÃO - Erro ao instalar no COLAB
library(summarytools)
dfSummary(iris) |> stview()

