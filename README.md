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

```

## Variáveis Qualitativas

### Municipio/Capital UF Prova
![Barras Municipio/Capital UF Prova](outputs/graficos/qualitativas/Municipio_Capital_UF_Prova_barras.png)  
![Pizza Municipio/Capital UF Prova](outputs/graficos/qualitativas/Municipio_Capital_UF_Prova_pizza.png)  

### NO_MUNICIPIO_PROVA
![Barras NO_MUNICIPIO_PROVA](outputs/graficos/qualitativas/NO_MUNICIPIO_PROVA_barras.png)  
![Pizza NO_MUNICIPIO_PROVA](outputs/graficos/qualitativas/NO_MUNICIPIO_PROVA_pizza.png)  

### Nome_UF_Prova
![Barras Nome_UF_Prova](outputs/graficos/qualitativas/Nome_UF_Prova_barras.png)  
![Pizza Nome_UF_Prova](outputs/graficos/qualitativas/Nome_UF_Prova_pizza.png)  

### Regiao_Nome_Prova
![Barras Regiao_Nome_Prova](outputs/graficos/qualitativas/Regiao_Nome_Prova_barras.png)  
![Pizza Regiao_Nome_Prova](outputs/graficos/qualitativas/Regiao_Nome_Prova_pizza.png)  

### SG_UF_PROVA
![Barras SG_UF_PROVA](outputs/graficos/qualitativas/SG_UF_PROVA_barras.png)  
![Pizza SG_UF_PROVA](outputs/graficos/qualitativas/SG_UF_PROVA_pizza.png)  

### TP_LINGUA
![Barras TP_LINGUA](outputs/graficos/qualitativas/TP_LINGUA_barras.png)  
![Pizza TP_LINGUA](outputs/graficos/qualitativas/TP_LINGUA_pizza.png)  

---

## Variáveis Quantitativas

### NOTA_CH_CIENCIAS_HUMANAS
![Histograma NOTA_CH_CIENCIAS_HUMANAS](outputs/graficos/quantitativas/NOTA_CH_CIENCIAS_HUMANAS_histograma.png)  
![Boxplot NOTA_CH_CIENCIAS_HUMANAS](outputs/graficos/quantitativas/NOTA_CH_CIENCIAS_HUMANAS_boxplot.png)  

### NOTA_CN_CIENCIAS_DA_NATUREZA
![Histograma NOTA_CN_CIENCIAS_DA_NATUREZA](outputs/graficos/quantitativas/NOTA_CN_CIENCIAS_DA_NATUREZA_histograma.png)  
![Boxplot NOTA_CN_CIENCIAS_DA_NATUREZA](outputs/graficos/quantitativas/NOTA_CN_CIENCIAS_DA_NATUREZA_boxplot.png)  

### NOTA_LC_LINGUAGENS_E_CODIGOS
![Histograma NOTA_LC_LINGUAGENS_E_CODIGOS](outputs/graficos/quantitativas/NOTA_LC_LINGUAGENS_E_CODIGOS_histograma.png)  
![Boxplot NOTA_LC_LINGUAGENS_E_CODIGOS](outputs/graficos/quantitativas/NOTA_LC_LINGUAGENS_E_CODIGOS_boxplot.png)  

### NOTA_MT_MATEMATICA
![Histograma NOTA_MT_MATEMATICA](outputs/graficos/quantitativas/NOTA_MT_MATEMATICA_histograma.png)  
![Boxplot NOTA_MT_MATEMATICA](outputs/graficos/quantitativas/NOTA_MT_MATEMATICA_boxplot.png)  

### NOTA_REDACAO
![Histograma NOTA_REDACAO](outputs/graficos/quantitativas/NOTA_REDACAO_histograma.png)  
![Boxplot NOTA_REDACAO](outputs/graficos/quantitativas/NOTA_REDACAO_boxplot.png)  

### NOTA_MEDIA_5_NOTAS
![Histograma NOTA_MEDIA_5_NOTAS](outputs/graficos/quantitativas/NOTA_MEDIA_5_NOTAS_histograma.png)  
![Boxplot NOTA_MEDIA_5_NOTAS](outputs/graficos/quantitativas/NOTA_MEDIA_5_NOTAS_boxplot.png)  
