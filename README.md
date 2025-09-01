# Projeto: Análise Descritiva dos Dados do ENEM

## Descrição
Este projeto tem como objetivo realizar a **análise descritiva das variáveis do ENEM**.  
O relatório inclui:  

- Tabelas de frequência e gráficos (barras e pizza) para variáveis qualitativas  
- Estatísticas descritivas, histogramas e boxplots para variáveis quantitativas  
- Texto automático descrevendo cada variável  

O projeto foi desenvolvido em **R** utilizando **RMarkdown** para gerar relatórios em PDF.

---

## Estrutura de Pastas

Projeto_Analise_Descritiva_ENEM/
│
├── data/ # Arquivos de dados (Excel, CSV)
├── outputs/ # Resultados gerados (PDF, gráficos, tabelas)
├── scripts/ # Scripts auxiliares em R
├── analise_enem.Rmd # Relatório principal em RMarkdown
├── analisedescritiva.Rmd # Relatório secundário (opcional)
├── Projeto_Analise_Descritiva_ENEM.Rproj
├── renv/ # Ambiente gerenciado pelo renv (opcional)
└── README.md # Este arquivo


---

## Como Rodar

1. Abra o projeto no **RStudio**:  
   Clique em `Projeto_Analise_Descritiva_ENEM.Rproj`.

2. Instale os pacotes necessários (caso não estejam instalados):

```r
install.packages(c("tidyverse", "summarytools", "plotrix", "knitr", "kableExtra", "readxl"))
