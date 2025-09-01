# Dependências
library(tidyverse)    # Manipulação e gráficos
library(summarytools) # Estatísticas detalhadas
library(plotrix)      # Gráficos de pizza
library(readxl)       # Ler Excel

# Caminho do arquivo
data_path <- "data/2512120033_Lucas Dias Noronha_15.xlsx"

# Carregar os dados (sem stringsAsFactors)
enem <- read_excel(data_path)

# Converter colunas de texto para fator
enem <- enem %>% mutate(across(where(is.character), as.factor))

# Visualizar primeiras linhas
head(enem)

# Separar qualitativas e quantitativas
qualitativas <- enem %>% select(where(is.factor))
quantitativas <- enem %>% select(where(is.numeric))

# Conferir nomes das colunas
names(qualitativas)
names(quantitativas)
