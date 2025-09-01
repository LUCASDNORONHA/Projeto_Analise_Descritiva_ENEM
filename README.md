# Análise Descritiva dos Dados do ENEM

## Visão Geral do Projeto
Estudo de caso que foi desenvolvido para a disciplina de **Estatística** no curso de **Ciência de Dados e IA** no IESB. O objetivo principal é realizar uma **análise descritiva** de um conjunto de dados do **ENEM**. O projeto aborda a análise de variáveis qualitativas e quantitativas, gerando tabelas, estatísticas e visualizações para cada uma delas. Todo o trabalho foi realizado em **R**, utilizando **RMarkdown** para automatizar a geração de relatórios e gráficos.

---

## Metodologia

O projeto seguiu a seguinte metodologia para a análise de cada variável:

* **Variáveis Qualitativas**: foram geradas tabelas de frequência e visualizações como gráficos de barras e de pizza.
* **Variáveis Quantitativas**: foram extraídas estatísticas descritivas (média, mediana, desvio padrão, etc.) e criados histogramas e boxplots.
* **Análise Escrita**: para cada variável, foi elaborada uma análise descritiva em um parágrafo.

---

## Estrutura do Repositório
A organização das pastas e arquivos facilita a navegação e a execução do projeto.

Projeto_Analise_Descritiva_ENEM/
├── data/                      # Armazena o conjunto de dados brutos.

├── outputs/                   # Contém os resultados e gráficos gerados.

│   ├── graficos/              # Armazena todas as visualizações.

│   │   ├── qualitativas/      # Gráficos de barras e pizza.

│   │   └── quantitativas/     # Histogramas e boxplots.

├── scripts/                   # Scripts auxiliares, se houver.

├── analise_enem.Rmd           # O script principal em RMarkdown.

├── Projeto_Analise_Descritiva_ENEM.Rproj # Arquivo de projeto do RStudio

└── README.md                  # Este arquivo.

---

## Como Rodar o Projeto
Para replicar a análise, siga os passos abaixo:

1.  Abra o arquivo `Projeto_Analise_Descritiva_ENEM.Rproj` no **RStudio** para carregar o projeto corretamente.
2.  Instale os pacotes necessários rodando o seguinte comando no console do R:

    ```r
    install.packages(c("tidyverse", "summarytools", "plotrix", "knitr", "kableExtra", "readxl"))
    ```

3.  Abra o arquivo `analise_enem.Rmd` e clique em **"Knit"** para gerar o relatório final em HTML, que incluirá todas as análises e gráficos.

---

# Análise Descritiva - ENEM 2023

Este documento apresenta a análise descritiva das variáveis quantitativas e qualitativas dos microdados do ENEM 2023.

## Variáveis Quantitativas

### NOTA_CN_CIENCIAS_DA_NATUREZA
- Média: 492.68
- Mediana: 471.65
- Desvio padrão: 91.67
- Intervalo interquartil (IQR): 127.75
- Valores mínimo e máximo: 363.3 e 696.3
- Observação: A média e a mediana sugerem assimetria na distribuição.


### NOTA_CH_CIENCIAS_HUMANAS
- Média: 510.26
- Mediana: 511.05
- Desvio padrão: 89.66
- Intervalo interquartil (IQR): 98.48
- Valores mínimo e máximo: 307.4 e 650.4
- Observação: A média e a mediana são próximas, indicando distribuição relativamente simétrica.


### NOTA_LC_LINGUAGENS_E_CODIGOS
- Média: 542.57
- Mediana: 555.9
- Desvio padrão: 59.64
- Intervalo interquartil (IQR): 47.73
- Valores mínimo e máximo: 359.5 e 621.2
- Observação: A média e a mediana sugerem assimetria na distribuição.


### NOTA_MT_MATEMATICA
- Média: 538.08
- Mediana: 509.15
- Desvio padrão: 123.61
- Intervalo interquartil (IQR): 202
- Valores mínimo e máximo: 392.5 e 794.6
- Observação: A média e a mediana sugerem assimetria na distribuição.


### NOTA_REDACAO
- Média: 669
- Mediana: 670
- Desvio padrão: 180.11
- Intervalo interquartil (IQR): 250
- Valores mínimo e máximo: 280 e 920
- Observação: A média e a mediana são próximas, indicando distribuição relativamente simétrica.


### NOTA_MEDIA_5_NOTAS
- Média: 550.52
- Mediana: 538.21
- Desvio padrão: 87.65
- Intervalo interquartil (IQR): 109.03
- Valores mínimo e máximo: 399.86 e 726.06
- Observação: A média e a mediana são próximas, indicando distribuição relativamente simétrica.


## Variáveis Qualitativas

### Regiao_Nome_Prova
- Categoria mais frequente: **Nordeste** (7 participantes, 35%)
- Categoria menos frequente: **Centro-Oeste** (2 participantes, 10%)
- Observação: Não há uma categoria dominante, indicando diversidade de respostas.


### SG_UF_PROVA
- Categoria mais frequente: **RJ** (4 participantes, 20%)
- Categoria menos frequente: **AL** (1 participantes, 5%)
- Observação: Não há uma categoria dominante, indicando diversidade de respostas.


### Nome_UF_Prova
- Categoria mais frequente: **Rio de Janeiro** (4 participantes, 20%)
- Categoria menos frequente: **Alagoas** (1 participantes, 5%)
- Observação: Não há uma categoria dominante, indicando diversidade de respostas.


### NO_MUNICIPIO_PROVA
- Categoria mais frequente: **Rio de Janeiro** (3 participantes, 15%)
- Categoria menos frequente: **Ananindeua** (1 participantes, 5%)
- Observação: Não há uma categoria dominante, indicando diversidade de respostas.


### Municipio_Capital_UF_Prova
- Categoria mais frequente: **Não** (14 participantes, 70%)
- Categoria menos frequente: **Sim** (6 participantes, 30%)
- Observação: Há forte concentração nessa categoria.


### TP_LINGUA
- Categoria mais frequente: **Espanhol** (11 participantes, 55%)
- Categoria menos frequente: **Inglês** (9 participantes, 45%)
- Observação: Há forte concentração nessa categoria.


---

# Gráficos 

## Análise das Variáveis
A seguir, estão os gráficos e visualizações gerados para cada variável analisada, divididos por tipo.

### Variáveis Qualitativas

* **Município/Capital UF Prova**
    ![Gráfico de Barras](outputs/graficos/qualitativas/Municipio_Capital_UF_Prova_barras.png)

A análise do gráfico de barras fornecida revela a concentração de participantes do ENEM 2023 em relação à realização da prova em uma capital de unidade federativa (UF).

O gráfico mostra duas categorias:

- **Sim:** 6  
- **Não:** 14  

Essa representação indica que, na amostra analisada, a maioria dos participantes (**14**) realizou a prova do ENEM em municípios que não são capitais de suas respectivas UFs. Em contraste, um número menor de participantes (**6**) fez a prova em uma capital.

    
![Gráfico de Pizza](outputs/graficos/qualitativas/Municipio_Capital_UF_Prova_pizza.png)

O gráfico de pizza representa a mesma informação do gráfico de barras anterior, mas de uma maneira diferente.

Aqui, a distribuição dos participantes do ENEM 2023 é visualizada por meio de proporções. As duas categorias são:

- **Não (cor azul escura):** Este setor, o maior do gráfico, representa a maioria dos participantes que fizeram a prova em municípios que não são capitais.
- **Sim (cor amarela):** Este setor, menor que o anterior, representa a proporção de participantes que realizaram a prova em uma capital de unidade federativa (UF).

O gráfico de pizza é ideal para visualizar a representatividade proporcional de cada grupo em relação ao todo. O tamanho de cada fatia corresponde diretamente à quantidade de participantes em cada categoria, deixando claro que a maioria dos participantes da amostra realizou a prova fora de uma capital.



* **NO\_MUNICIPIO\_PROVA**
    ![Gráfico de Barras](outputs/graficos/qualitativas/NO_MUNICIPIO_PROVA_barras.png)

O gráfico de barras detalha a frequência de participantes do ENEM 2023 por município, em uma amostra específica.

A visualização mostra a distribuição dos participantes entre diversos municípios, com destaque para a frequência de cada um. A análise revela:

- **Rio de Janeiro:** 3 participantes na amostra (maior frequência).
- **Ananindeua, Batalha, Brasilândia de Minas, Campinas, Canoas, Chapadinha, Formosa, Jataí, Macaé, Macapá, Maracanaú, Natal, Palhoça, Queimadas, Santo André, Sobral e Teresina:** 1 participante cada.

Isso sugere uma alta concentração de participantes no **Rio de Janeiro**, enquanto os demais municípios da amostra apresentam uma distribuição mais dispersa e com menor número de participantes, refletindo a distribuição populacional e de locais de prova.


![Gráfico de Pizza](outputs/graficos/qualitativas/NO_MUNICIPIO_PROVA_pizza.png)

O gráfico de pizza apresenta a mesma distribuição de frequência por município, mas de uma forma proporcional.

A visualização confirma a análise do gráfico de barras anterior, mostrando que a fatia correspondente ao **Rio de Janeiro** é a maior e mais destacada, indicando que esse município concentra a maior proporção de participantes na amostra.

As demais fatias, representando os outros municípios, são de tamanho similar e significativamente menores que a do Rio de Janeiro. Isso demonstra que a maioria dos municípios listados na amostra tem uma proporção de participantes muito pequena e similar entre si, enquanto o Rio de Janeiro é um polo de prova mais expressivo para este conjunto de dados.


* **Nome\_UF\_Prova**
    ![Gráfico de Barras](outputs/graficos/qualitativas/Nome_UF_Prova_barras.png)

O gráfico de barras ilustra a frequência de participantes do ENEM 2023 por estado (Unidade da Federação - UF) em uma amostra de dados.

A análise do gráfico revela o seguinte padrão de distribuição:

- **Rio de Janeiro:** 4 participantes (maior frequência na amostra).  
- **São Paulo, Goiás e Ceará:** 2 participantes cada.  
- **Santa Catarina, Rio Grande do Sul, Rio Grande do Norte, Piauí, Paraíba, Pará, Minas Gerais, Maranhão, Amapá e Alagoas:** 1 participante cada.

Essa distribuição mostra que, enquanto alguns estados concentram um número maior de participantes, a maioria das UFs na amostra tem uma representação menor e mais uniforme.


![Gráfico de Pizza](outputs/graficos/qualitativas/Nome_UF_Prova_pizza.png)

O gráfico de pizza mostra a distribuição proporcional dos participantes do ENEM 2023 por Unidade da Federação (UF) em uma amostra.

A visualização em pizza confirma os dados do gráfico de barras anterior, mas de uma forma que enfatiza as proporções. A análise revela o seguinte:

- A fatia correspondente ao **Rio de Janeiro** é a maior de todas, refletindo sua maior frequência de participantes na amostra.  
- As fatias de **São Paulo, Goiás e Ceará** são as próximas em tamanho, confirmando que esses estados têm uma proporção de participantes maior do que os demais.  
- As fatias menores e de tamanhos semelhantes representam o restante das UFs, que registraram apenas um participante cada.

O gráfico de pizza é eficaz para demonstrar visualmente que, na amostra analisada, a maioria dos participantes se concentra em alguns poucos estados, com o **Rio de Janeiro** sendo o mais proeminente.


* **Regiao\_Nome\_Prova**
    ![Gráfico de Barras](outputs/graficos/qualitativas/Regiao_Nome_Prova_barras.png)

O gráfico de barras mostra a frequência de participantes do ENEM 2023 por região do Brasil em uma amostra de dados.

A análise do gráfico revela uma distribuição bem clara entre as regiões:

- **Sudeste e Nordeste:** 7 participantes cada (maior frequência).  
- **Sul, Norte e Centro-Oeste:** 2 participantes cada (frequência significativamente menor).  

Essa visualização mostra que, na amostra analisada, as regiões **Sudeste e Nordeste** concentram a maioria dos candidatos, enquanto as outras três regiões têm uma representação mais baixa.


![Gráfico de Pizza](outputs/graficos/qualitativas/Regiao_Nome_Prova_pizza.png)

O gráfico de pizza representa a mesma distribuição de participantes do ENEM 2023 por região, agora de forma proporcional.

A visualização em pizza confirma a análise do gráfico de barras anterior:

- **Sudeste e Nordeste:** maiores fatias, de tamanhos iguais, indicando que essas duas regiões têm a maior e igual proporção de participantes na amostra.  
- **Sul, Norte e Centro-Oeste:** fatias menores e semelhantes entre si, representando a menor proporção de participantes nessas regiões.

Este gráfico é eficaz para visualizar rapidamente a disparidade na distribuição de participantes, reforçando que as regiões **Sudeste e Nordeste**, juntas, concentram a maior parte da amostra.




* **SG\_UF\_PROVA**
    ![Gráfico de Barras](outputs/graficos/qualitativas/SG_UF_PROVA_barras.png

O gráfico de barras ilustra a frequência de participantes do ENEM 2023 por estado (Unidade da Federação - UF) em uma amostra de dados.

A análise do gráfico revela o seguinte padrão de distribuição:

- **RJ (Rio de Janeiro):** 4 participantes (maior frequência).  
- **SP (São Paulo), GO (Goiás) e CE (Ceará):** 2 participantes cada.  
- **SC, RS, RN, PI, PB, PA, MG, MA, AP e AL:** 1 participante cada.

Essa distribuição mostra que, enquanto alguns estados concentram um número maior de participantes, a maioria das UFs na amostra tem uma representação menor e mais uniforme.


![Gráfico de Pizza](outputs/graficos/qualitativas/SG_UF_PROVA_pizza.png)

O gráfico de pizza representa a mesma distribuição de participantes por Unidade da Federação (UF) em uma amostra de dados do ENEM 2023, mas de forma proporcional.

A visualização em pizza confirma a análise do gráfico de barras anterior, enfatizando as proporções:

- **RJ (Rio de Janeiro):** maior fatia, refletindo a maior frequência de participantes na amostra.  
- **SP (São Paulo), GO (Goiás) e CE (Ceará):** próximas em tamanho, indicando maior proporção de participantes em relação aos demais estados.  
- **Demais UFs (SC, RS, RN, PI, PB, PA, MG, MA, AP e AL):** fatias menores e de tamanhos semelhantes, cada uma representando apenas um participante.

Este gráfico é eficaz para demonstrar visualmente que, na amostra analisada, a maioria dos participantes se concentra em alguns poucos estados, com o **Rio de Janeiro** sendo o mais proeminente.


* **TP\_LINGUA**
    ![Gráfico de Barras](outputs/graficos/qualitativas/TP_LINGUA_barras.png)

O gráfico de barras mostra a frequência da opção de língua estrangeira (Inglês ou Espanhol) escolhida pelos participantes na amostra de dados do ENEM 2023.

A análise do gráfico revela o seguinte:

- **Espanhol:** 11 participantes (língua mais escolhida).  
- **Inglês:** 9 participantes.  

Essa visualização deixa claro que, na amostra analisada, a escolha pela língua **Espanhola** foi mais frequente do que pela língua **Inglesa**.


![Gráfico de Pizza](outputs/graficos/qualitativas/TP_LINGUA_pizza.png)

O gráfico de pizza **"Distribuição - TP_LINGUA"** representa a distribuição proporcional da escolha de língua estrangeira (Inglês ou Espanhol) por participantes do ENEM 2023, com base em uma amostra.

A visualização confirma os dados do gráfico de barras anterior, enfatizando as proporções:

- **Espanhol:** maior fatia, indicando que a maioria dos participantes selecionou essa língua.  
- **Inglês:** fatia menor, confirmando que foi a segunda opção mais popular.  

Este gráfico é ideal para mostrar de forma rápida e clara a pequena diferença na preferência de língua estrangeira entre os candidatos da amostra, reforçando a leve vantagem da escolha por **Espanhol**.

---

### Variáveis Quantitativas

* **NOTA\_CH\_CIENCIAS\_HUMANAS**
    ![Histograma](outputs/graficos/quantitativas/NOTA_CH_CIENCIAS_HUMANAS_histograma.png)

O histograma exibe a distribuição das notas dos participantes do ENEM 2023 na prova de **Ciências Humanas**, com base em uma amostra de microdados.

A análise do gráfico revela a frequência das notas em diferentes faixas, além da posição da **média** e da **mediana**:

- **Distribuição das notas:**  
  As notas mais frequentes estão concentradas em torno de **500** e **600** pontos.  
  - Três participantes obtiveram notas na faixa de **600**.  
  - Dois participantes estão na faixa de **500**.  
  - Notas mais baixas (300 e 400) e algumas intermediárias aparecem com menor frequência.  

- **Medidas de tendência central:**  
  - A **mediana** (linha verde pontilhada) está em torno de **500**, indicando que metade dos participantes tem notas iguais ou inferiores a esse valor, e a outra metade iguais ou superiores.  
  - A **média** (linha vermelha, não visível) deve estar próxima da mediana, sugerindo uma distribuição relativamente equilibrada.  

Essa análise indica que, na amostra, a maior concentração de notas em **Ciências Humanas** está nas faixas mais altas, com um pico claro na faixa de **600 pontos**.

    ![Boxplot](outputs/graficos/quantitativas/NOTA_CH_CIENCIAS_HUMANAS_boxplot.png)

O boxplot oferece um resumo estatístico das notas de **Ciências Humanas** do ENEM 2023, com base em uma amostra de microdados.  
Este tipo de gráfico é ideal para visualizar **distribuição, tendência central e dispersão** dos dados.

A análise do boxplot revela:

- **Mediana:**  
  Representada pela linha verde pontilhada dentro da caixa, está próxima de **500 pontos**, indicando que 50% dos participantes têm notas iguais ou inferiores a esse valor.

- **Primeiro e Terceiro Quartil:**  
  - **Q1:** ~470 pontos (25% das notas estão abaixo desse valor).  
  - **Q3:** ~570 pontos (75% das notas estão abaixo desse valor).  

- **Intervalo Interquartil (IIQ):**  
  A amplitude entre Q1 e Q3 é relativamente curta, sugerindo que a maioria dos participantes obteve notas **próximas à mediana**.

- **Mínimo e Máximo:**  
  As hastes indicam que as notas variam de pouco acima de **400 pontos** até cerca de **620 pontos**.

- **Outliers:**  
  Pontos isolados na faixa de **300 pontos**, representando notas **significativamente baixas**.

📌 **Resumo:**  
A maior parte das notas de **Ciências Humanas** está concentrada entre **470** e **570 pontos**, com mediana em **500**.  
A presença de **outliers** revela alguns casos atípicos de notas bem mais baixas que o padrão geral.


* **NOTA\_CN\_CIENCIAS\_DA\_NATUREZA**
    ![Histograma](outputs/graficos/quantitativas/NOTA_CN_CIENCIAS_DA_NATUREZA_histograma.png)
    ![Boxplot](outputs/graficos/quantitativas/NOTA_CN_CIENCIAS_DA_NATUREZA_boxplot.png)

* **NOTA\_LC\_LINGUAGENS\_E\_CODIGOS**
    ![Histograma](outputs/graficos/quantitativas/NOTA_LC_LINGUAGENS_E_CODIGOS_histograma.png)
    ![Boxplot](outputs/graficos/quantitativas/NOTA_LC_LINGUAGENS_E_CODIGOS_boxplot.png)

* **NOTA\_MT\_MATEMATICA**
    ![Histograma](outputs/graficos/quantitativas/NOTA_MT_MATEMATICA_histograma.png)
    ![Boxplot](outputs/graficos/quantitativas/NOTA_MT_MATEMATICA_boxplot.png)

* **NOTA\_REDACAO**
    ![Histograma](outputs/graficos/quantitativas/NOTA_REDACAO_histograma.png)
    ![Boxplot](outputs/graficos/quantitativas/NOTA_REDACAO_boxplot.png)

* **NOTA\_MEDIA\_5\_NOTAS**
    ![Histograma](outputs/graficos/quantitativas/NOTA_MEDIA_5_NOTAS_histograma.png)
    ![Boxplot](outputs/graficos/quantitativas/NOTA_MEDIA_5_NOTAS_boxplot.png)
