# Diretório para salvar gráficos
dir.create("outputs/graficos/qualitativas", recursive = TRUE, showWarnings = FALSE)

# Loop para gerar tabelas e gráficos de cada variável qualitativa
for (var in names(qualitativas)) {
  
  # Frequência absoluta e relativa
  freq_abs <- table(enem[[var]])
  freq_rel <- prop.table(freq_abs) * 100
  
  print(paste("Frequência -", var))
  print(freq_abs)
  print(round(freq_rel,2))
  
  # Gráfico de barras
  p <- ggplot(enem, aes_string(x=var)) +
       geom_bar(fill="steelblue") +
       theme_minimal() +
       labs(title=paste("Distribuição -", var), x=var, y="Frequência")
  
  ggsave(filename=paste0("outputs/graficos/qualitativas/", var, "_barras.png"), plot=p)
  
  # Gráfico de pizza
  png(filename=paste0("outputs/graficos/qualitativas/", var, "_pizza.png"))
  pie(freq_abs, main=paste("Distribuição -", var), col=rainbow(length(freq_abs)))
  dev.off()
}
