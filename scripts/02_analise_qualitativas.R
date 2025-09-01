library(ggplot2)
library(dplyr)
library(viridis)
library(scales)
library(plotly)
library(htmlwidgets) # Para salvar HTML

# Criar diretório para salvar gráficos
dir.create("outputs/graficos/qualitativas", recursive = TRUE, showWarnings = FALSE)
dir.create("outputs/graficos/qualitativas/interactive", recursive = TRUE, showWarnings = FALSE)

# Loop para gerar tabelas e gráficos de cada variável qualitativa
for (var in names(qualitativas)) {
  
  # Frequência absoluta e relativa
  freq_abs <- table(enem[[var]])
  freq_rel <- prop.table(freq_abs) * 100
  
  print(paste("Frequência -", var))
  print(freq_abs)
  print(round(freq_rel, 2))
  
  # ==========================
  # Gráficos de Barras
  # ==========================
  
  if (var == "SG_UF_RESIDENCIA") {
    
    dados_estado <- enem %>%
      group_by(SG_UF_RESIDENCIA) %>%
      summarise(media_nota = mean(NU_NOTA_MT, na.rm = TRUE)) %>%
      arrange(media_nota)
    
    p <- ggplot(dados_estado, aes(x = reorder(SG_UF_RESIDENCIA, media_nota), y = media_nota, fill = media_nota)) +
      geom_bar(stat = "identity") +
      geom_text(aes(label = round(media_nota,1)), hjust = -0.1, size = 4) +
      coord_flip() +
      scale_fill_viridis(option = "C") +
      labs(title = "Média das Notas de Matemática por Estado",
           subtitle = "Análise dos microdados do ENEM 2023",
           x = "Estado",
           y = "Média da Nota",
           fill = "Média") +
      theme_minimal(base_size = 14) +
      theme(plot.title = element_text(face="bold"),
            plot.subtitle = element_text(size=12),
            legend.position = "bottom")
    
    ggsave(filename=paste0("outputs/graficos/qualitativas/", var, "_barras.png"),
           plot=p, width=10, height=6, bg="white")
    
  } else {
    freq_df <- as.data.frame(freq_abs)
    colnames(freq_df) <- c("categoria", "frequencia")
    
    p <- ggplot(freq_df, aes(x = reorder(categoria, frequencia), y = frequencia, fill = frequencia)) +
      geom_bar(stat = "identity") +
      geom_text(aes(label = frequencia), hjust = -0.1, size = 3.5) +
      coord_flip() +
      scale_fill_viridis(option = "C") +
      labs(title = paste("Distribuição -", var),
           subtitle = "Análise dos microdados do ENEM 2023",
           x = var,
           y = "Frequência",
           fill = "Frequência") +
      theme_minimal(base_size = 12) +
      theme(plot.title = element_text(face="bold"),
            plot.subtitle = element_text(size=11),
            legend.position = "bottom")
    
    ggsave(filename=paste0("outputs/graficos/qualitativas/", var, "_barras.png"),
           plot=p, width=10, height=6, bg="white")
  }
  
  # ==========================
  # Gráficos de Pizza PNG
  # ==========================
  freq_colors <- viridis(length(freq_abs), option="C")
  
  png(filename=paste0("outputs/graficos/qualitativas/", var, "_pizza.png"),
      width=800, height=600, bg="white")
  pie(freq_abs, main=paste("Distribuição -", var), col=freq_colors)
  dev.off()
  
  # ==========================
  # Gráficos Interativos Plotly
  # ==========================
  
  # Gráfico de barras interativo
  p_barras_plotly <- ggplotly(p, tooltip = c("x","y")) %>%
    layout(paper_bgcolor="white", plot_bgcolor="white")
  saveWidget(p_barras_plotly, file=paste0("outputs/graficos/qualitativas/interactive/", var, "_barras_interativo.html"))
  
  # Gráfico de pizza interativo
  freq_df_plotly <- data.frame(
    categoria = names(freq_abs),
    frequencia = as.numeric(freq_abs)
  )
  p_pizza_plotly <- plot_ly(
    freq_df_plotly,
    labels = ~categoria,
    values = ~frequencia,
    type = 'pie',
    textinfo = 'label+percent',
    marker = list(colors = viridis(length(freq_abs), option="C"))
  ) %>%
    layout(title = paste("Distribuição -", var),
           paper_bgcolor="white",
           plot_bgcolor="white")
  
  saveWidget(p_pizza_plotly, file=paste0("outputs/graficos/qualitativas/interactive/", var, "_pizza_interativo.html"))
}
