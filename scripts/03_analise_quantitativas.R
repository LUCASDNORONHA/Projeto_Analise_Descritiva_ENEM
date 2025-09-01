library(ggplot2)
library(dplyr)
library(viridis)
library(psych)       # para descr()
library(plotly)
library(htmlwidgets)

# =========================
# Diretórios para salvar gráficos
# =========================
dir.create("outputs/graficos/quantitativas", recursive = TRUE, showWarnings = FALSE)
dir.create("outputs/graficos/quantitativas/interactive", recursive = TRUE, showWarnings = FALSE)

# =========================
# Paleta de cores fixa por variável (storytelling visual)
# =========================
paleta_var <- viridis::viridis(length(names(quantitativas)), option = "C")
names(paleta_var) <- names(quantitativas)

# =========================
# Loop para cada variável quantitativa
# =========================
for (var in names(quantitativas)) {
  
  # Cor única para a variável
  cor_var <- paleta_var[var]
  
  # Estatísticas descritivas
  cat("\n========================\n")
  cat(paste("Estatísticas -", var, "\n"))
  print(summary(enem[[var]]))
  print(descr(enem[[var]], stats=c("mean","sd","min","max","med","iqr")))
  
  # Média e mediana
  media_val <- mean(enem[[var]], na.rm = TRUE)
  mediana_val <- median(enem[[var]], na.rm = TRUE)
  
  # ==========================
  # Histograma
  # ==========================
  p_hist <- ggplot(enem, aes(x = .data[[var]])) +
    geom_histogram(binwidth=10, fill=cor_var, color="black") +
    geom_vline(xintercept = media_val, color="#E41A1C", linetype="dashed", linewidth=1.2, alpha=0.9) +
    geom_vline(xintercept = mediana_val, color="#4DAF4A", linetype="dashed", linewidth=1.2, alpha=0.9) +
    labs(title=paste("Histograma -", var),
         subtitle=paste("Distribuição das notas - ENEM 2023\nLinha vermelha = média, verde = mediana"),
         x=var, y="Frequência") +
    theme_minimal(base_size = 14) +
    theme(plot.title = element_text(face="bold"),
          plot.subtitle = element_text(size=12))
  
  ggsave(filename=paste0("outputs/graficos/quantitativas/", var, "_histograma.png"), 
         plot=p_hist, width=10, height=6, bg="white")
  
  # Histograma interativo
  p_hist_plotly <- ggplotly(p_hist, tooltip=c("x","y")) %>%
    layout(paper_bgcolor="white", plot_bgcolor="white")
  
  saveWidget(p_hist_plotly, file=paste0("outputs/graficos/quantitativas/interactive/", var, "_histograma_interativo.html"))
  
  # ==========================
  # Boxplot
  # ==========================
  p_box <- ggplot(enem, aes(y = .data[[var]])) +
    geom_boxplot(fill=cor_var, alpha=0.8) +
    geom_hline(yintercept = media_val, color="#E41A1C", linetype="dashed", linewidth=1.2, alpha=0.9) +
    geom_hline(yintercept = mediana_val, color="#4DAF4A", linetype="dashed", linewidth=1.2, alpha=0.9) +
    labs(title=paste("Boxplot -", var),
         subtitle="Resumo estatístico e outliers\nLinha vermelha = média, verde = mediana",
         y=var) +
    theme_minimal(base_size = 14) +
    theme(plot.title = element_text(face="bold"),
          plot.subtitle = element_text(size=12),
          legend.position = "none")
  
  ggsave(filename=paste0("outputs/graficos/quantitativas/", var, "_boxplot.png"), 
         plot=p_box, width=6, height=6, bg="white")
  
  # Boxplot interativo
  p_box_plotly <- ggplotly(p_box, tooltip=c("y")) %>%
    layout(paper_bgcolor="white", plot_bgcolor="white")
  
  saveWidget(p_box_plotly, file=paste0("outputs/graficos/quantitativas/interactive/", var, "_boxplot_interativo.html"))
  
}
