library(shiny)
library(plotly)
library(dplyr)
library(ggplot2)
library(viridis)
library(psych)

# =========================
# Preparação de arquivos
# =========================
variaveis_qualitativas <- names(qualitativas)
variaveis_quantitativas <- names(quantitativas)

get_freq_df <- function(var){
  freq_abs <- table(enem[[var]])
  data.frame(
    categoria = names(freq_abs),
    frequencia = as.numeric(freq_abs)
  )
}

# =========================
# Interface do usuário
# =========================
ui <- fluidPage(
  titlePanel("Dashboard Interativo ENEM - Storytelling Visual"),
  
  tabsetPanel(
    tabPanel("Barras Qualitativas",
             sidebarLayout(
               sidebarPanel(
                 selectInput("var_barras", "Escolha a variável:", choices = variaveis_qualitativas)
               ),
               mainPanel(
                 plotlyOutput("grafico_barras", height = "600px")
               )
             )
    ),
    tabPanel("Pizza Qualitativas",
             sidebarLayout(
               sidebarPanel(
                 selectInput("var_pizza", "Escolha a variável:", choices = variaveis_qualitativas)
               ),
               mainPanel(
                 plotlyOutput("grafico_pizza", height = "600px")
               )
             )
    ),
    tabPanel("Histogramas Quantitativos",
             sidebarLayout(
               sidebarPanel(
                 selectInput("var_hist", "Escolha a variável:", choices = variaveis_quantitativas)
               ),
               mainPanel(
                 plotlyOutput("grafico_hist", height = "600px")
               )
             )
    ),
    tabPanel("Boxplots Quantitativos",
             sidebarLayout(
               sidebarPanel(
                 selectInput("var_box", "Escolha a variável:", choices = variaveis_quantitativas)
               ),
               mainPanel(
                 plotlyOutput("grafico_box", height = "600px")
               )
             )
    )
  )
)

# =========================
# Servidor
# =========================
server <- function(input, output, session) {
  
  # --------------------------
  # Barras Qualitativas
  # --------------------------
  output$grafico_barras <- renderPlotly({
    req(input$var_barras)
    
    if(input$var_barras == "SG_UF_RESIDENCIA"){
      dados_estado <- enem %>%
        group_by(SG_UF_RESIDENCIA) %>%
        summarise(media_nota = mean(NU_NOTA_MT, na.rm = TRUE)) %>%
        arrange(media_nota)
      
      p <- ggplot(dados_estado, aes(x = reorder(SG_UF_RESIDENCIA, media_nota), y = media_nota, fill = media_nota)) +
        geom_bar(stat="identity") +
        geom_text(aes(label=round(media_nota,1)), hjust=-0.1, size=4) +
        coord_flip() +
        scale_fill_viridis(option="D") +
        labs(title="Média das Notas de Matemática por Estado",
             subtitle="Microdados ENEM 2023",
             x="Estado", y="Média da Nota", fill="Média") +
        theme_minimal(base_size=14) +
        theme(plot.title=element_text(face="bold"),
              plot.subtitle=element_text(size=12),
              legend.position="bottom")
    } else {
      freq_df <- get_freq_df(input$var_barras)
      p <- ggplot(freq_df, aes(x=reorder(categoria, frequencia), y=frequencia, fill=frequencia)) +
        geom_bar(stat="identity") +
        geom_text(aes(label=frequencia), hjust=-0.1, size=3.5) +
        coord_flip() +
        scale_fill_viridis(option="D") +
        labs(title=paste("Distribuição -", input$var_barras),
             subtitle="Microdados ENEM 2023",
             x=input$var_barras, y="Frequência", fill="Frequência") +
        theme_minimal(base_size=12) +
        theme(plot.title=element_text(face="bold"),
              plot.subtitle=element_text(size=11),
              legend.position="bottom")
    }
    
    ggplotly(p, tooltip=c("x","y")) %>%
      layout(paper_bgcolor="white", plot_bgcolor="white")
  })
  
  # --------------------------
  # Pizza Qualitativas
  # --------------------------
  output$grafico_pizza <- renderPlotly({
    req(input$var_pizza)
    freq_df <- get_freq_df(input$var_pizza)
    
    plot_ly(freq_df,
            labels=~categoria,
            values=~frequencia,
            type='pie',
            textinfo='label+percent',
            marker=list(colors=viridis(nrow(freq_df), option="D"))) %>%
      layout(title=paste("Distribuição -", input$var_pizza),
             paper_bgcolor="white",
             plot_bgcolor="white")
  })
  
  # --------------------------
  # Histogramas Quantitativos
  # --------------------------
  output$grafico_hist <- renderPlotly({
    req(input$var_hist)
    media_val <- mean(enem[[input$var_hist]], na.rm=TRUE)
    mediana_val <- median(enem[[input$var_hist]], na.rm=TRUE)
    
    p <- ggplot(enem, aes(x=.data[[input$var_hist]])) +
      geom_histogram(binwidth=10, fill="#69b3a2", color="#1f2f3a") +
      geom_vline(xintercept=media_val, color="#e41a1c", linetype="dashed", linewidth=1, alpha=0.8) +
      geom_vline(xintercept=mediana_val, color="#4daf4a", linetype="dashed", linewidth=1, alpha=0.8) +
      labs(title=paste("Histograma -", input$var_hist),
           subtitle="Linha vermelha = média, verde = mediana",
           x=input$var_hist, y="Frequência") +
      theme_minimal(base_size=14) +
      theme(plot.title=element_text(face="bold"),
            plot.subtitle=element_text(size=12))
    
    ggplotly(p, tooltip=c("x","y")) %>%
      layout(paper_bgcolor="white", plot_bgcolor="white")
  })
  
  # --------------------------
  # Boxplots Quantitativos
  # --------------------------
  output$grafico_box <- renderPlotly({
    req(input$var_box)
    media_val <- mean(enem[[input$var_box]], na.rm=TRUE)
    mediana_val <- median(enem[[input$var_box]], na.rm=TRUE)
    
    p <- ggplot(enem, aes(y=.data[[input$var_box]])) +
      geom_boxplot(fill="#8073ac") +
      geom_hline(yintercept=media_val, color="#e41a1c", linetype="dashed", linewidth=1, alpha=0.8) +
      geom_hline(yintercept=mediana_val, color="#4daf4a", linetype="dashed", linewidth=1, alpha=0.8) +
      labs(title=paste("Boxplot -", input$var_box),
           subtitle="Linha vermelha = média, verde = mediana",
           y=input$var_box) +
      theme_minimal(base_size=14) +
      theme(plot.title=element_text(face="bold"),
            plot.subtitle=element_text(size=12))
    
    ggplotly(p, tooltip=c("y")) %>%
      layout(paper_bgcolor="white", plot_bgcolor="white")
  })
  
}

# =========================
# Rodar o app
# =========================
shinyApp(ui, server)
