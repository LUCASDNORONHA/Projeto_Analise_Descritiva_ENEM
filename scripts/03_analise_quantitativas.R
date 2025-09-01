# Diretório para salvar gráficos
dir.create("outputs/graficos/quantitativas", recursive = TRUE, showWarnings = FALSE)

for (var in names(quantitativas)) {
  
  # Estatísticas descritivas
  print(paste("Estatísticas -", var))
  print(summary(enem[[var]]))
  print(descr(enem[[var]], stats=c("mean","sd","min","max","med","iqr")))
  
  # Histograma
  p_hist <- ggplot(enem, aes_string(x=var)) +
    geom_histogram(binwidth=10, fill="lightblue", color="black") +
    labs(title=paste("Histograma -", var), x=var, y="Frequência") +
    theme_minimal()
  ggsave(filename=paste0("outputs/graficos/quantitativas/", var, "_histograma.png"), plot=p_hist)
  
  # Boxplot
  p_box <- ggplot(enem, aes_string(y=var)) +
    geom_boxplot(fill="orange") +
    labs(title=paste("Boxplot -", var), y=var) +
    theme_minimal()
  ggsave(filename=paste0("outputs/graficos/quantitativas/", var, "_boxplot.png"), plot=p_box)
}
