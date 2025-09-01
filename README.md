# Projeto: Análise Descritiva dos Dados do ENEM

## Disciplina
Este projeto foi desenvolvido para a disciplina **Estatística**, ministrada pela professora **Simone de Araújo Góes Assis**, do curso de **Ciência de Dados e IA** do **IESB**.

---

## Descrição
Este projeto tem como objetivo realizar a **análise descritiva das variáveis do ENEM**, resolvendo o seguinte problema:

> Na base de dados destinada a cada aluno, fazer a análise descritiva das variáveis do ENEM.  
> Nas variáveis qualitativas, gerar **tabelas de frequência** e gráficos de **barras ou pizza**.  
> Nas variáveis quantitativas, extrair **estatísticas descritivas** e gerar **histogramas e boxplots**.  
> Por fim, produzir uma **análise descritiva escrita** em um parágrafo para cada variável.  
> Utilizar **Python e/ou R e/ou SAS**.

O relatório foi desenvolvido em **R**, usando **RMarkdown** para gerar os gráficos e as análises automáticas.  

---

## Estrutura de Pastas

Projeto_Analise_Descritiva_ENEM/
│
├── data/ 

├── outputs/ 

│ ├── graficos/

│ ├── qualitativas/

│ └── quantitativas/

├── scripts/ 

├── analise_enem.Rmd 

├── Projeto_Analise_Descritiva_ENEM.Rproj

└── README.md 


---

## Como Rodar

1. Abra o projeto no **RStudio**:  
   Clique em `Projeto_Analise_Descritiva_ENEM.Rproj`.

2. Instale os pacotes necessários (caso não estejam instalados):

```r
install.packages(c("tidyverse", "summarytools", "plotrix", "knitr", "kableExtra", "readxl"))

### TP_LINGUA
![Gráfico de Barras TP_LINGUA](outputs/graficos/qualitativas/TP_LINGUA_barras.png)

### NOTA_MT_MATEMATICA
![Histograma NOTA_MT_MATEMATICA](outputs/graficos/quantitativas/NOTA_MT_MATEMATICA_histograma.png)
![Boxplot NOTA_MT_MATEMATICA](outputs/graficos/quantitativas/NOTA_MT_MATEMATICA_boxplot.png)


