# Projeto: Análise Descritiva dos Dados do ENEM

## Disciplina
Este projeto foi desenvolvido para a disciplina **Estatística**, ministrada pela professora **Simone de Araújo Góes Assis**, do curso de **Ciência de Dados e IA** do **IESB**.

---

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

├── data/ 

├── outputs/

├── scripts/ 

├── analise_enem.Rmd

├── Projeto_Analise_Descritiva_ENEM.Rproj

└── README.md =


---

## Como Rodar

1. Abra o projeto no **RStudio**:  
   Clique em `Projeto_Analise_Descritiva_ENEM.Rproj`.

2. Instale os pacotes necessários (caso não estejam instalados):

```r
install.packages(c("tidyverse", "summarytools", "plotrix", "knitr", "kableExtra", "readxl"))
