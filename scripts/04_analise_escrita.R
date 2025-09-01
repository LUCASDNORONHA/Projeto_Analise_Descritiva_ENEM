# =========================
# Criação de arquivo Markdown com análise descritiva
# =========================

# Nome do arquivo de saída
arquivo_md <- "outputs/analise_descritiva.md"

# Abre conexão para escrita
fileConn <- file(arquivo_md, "w")

# Cabeçalho
writeLines("# Análise Descritiva - ENEM 2023\n", fileConn)
writeLines("Este documento apresenta a análise descritiva das variáveis quantitativas e qualitativas dos microdados do ENEM 2023.\n", fileConn)

# -------------------------
# Variáveis Quantitativas
# -------------------------
writeLines("## Variáveis Quantitativas\n", fileConn)

for (var in names(quantitativas)) {
  valores <- enem[[var]]
  
  media <- mean(valores, na.rm=TRUE)
  mediana <- median(valores, na.rm=TRUE)
  dp <- sd(valores, na.rm=TRUE)
  min_val <- min(valores, na.rm=TRUE)
  max_val <- max(valores, na.rm=TRUE)
  iqr_val <- IQR(valores, na.rm=TRUE)
  
  texto <- paste0(
    "### ", var, "\n",
    "- Média: ", round(media,2), "\n",
    "- Mediana: ", round(mediana,2), "\n",
    "- Desvio padrão: ", round(dp,2), "\n",
    "- Intervalo interquartil (IQR): ", round(iqr_val,2), "\n",
    "- Valores mínimo e máximo: ", min_val, " e ", max_val, "\n",
    "- Observação: ", ifelse(abs(media - mediana) > dp*0.2, 
                             "A média e a mediana sugerem assimetria na distribuição.", 
                             "A média e a mediana são próximas, indicando distribuição relativamente simétrica."), "\n\n"
  )
  
  writeLines(texto, fileConn)
}

# -------------------------
# Variáveis Qualitativas
# -------------------------
writeLines("## Variáveis Qualitativas\n", fileConn)

for (var in names(qualitativas)) {
  freq_abs <- table(enem[[var]])
  freq_rel <- prop.table(freq_abs) * 100
  
  categoria_mais <- names(freq_abs)[which.max(freq_abs)]
  freq_mais <- max(freq_abs)
  perc_mais <- round(freq_rel[which.max(freq_abs)], 2)
  
  categoria_menos <- names(freq_abs)[which.min(freq_abs)]
  freq_menos <- min(freq_abs)
  perc_menos <- round(freq_rel[which.min(freq_abs)], 2)
  
  texto <- paste0(
    "### ", var, "\n",
    "- Categoria mais frequente: **", categoria_mais, "** (", freq_mais, " participantes, ", perc_mais, "%)\n",
    "- Categoria menos frequente: **", categoria_menos, "** (", freq_menos, " participantes, ", perc_menos, "%)\n",
    "- Observação: ", ifelse(perc_mais > 50, 
                             "Há forte concentração nessa categoria.", 
                             "Não há uma categoria dominante, indicando diversidade de respostas."), "\n\n"
  )
  
  writeLines(texto, fileConn)
}

writeLines("---\n*Fim da análise descritiva.*", fileConn)

# Fecha conexão
close(fileConn)

cat("Arquivo Markdown gerado em:", arquivo_md, "\n")

