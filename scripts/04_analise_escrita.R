# Exemplo automático de descrição para quantitativas
for (var in names(quantitativas)) {
  media <- mean(enem[[var]], na.rm=TRUE)
  mediana <- median(enem[[var]], na.rm=TRUE)
  dp <- sd(enem[[var]], na.rm=TRUE)
  min_val <- min(enem[[var]], na.rm=TRUE)
  max_val <- max(enem[[var]], na.rm=TRUE)
  
  cat(paste0(
    "A variável '", var, "' apresenta média de ", round(media,2),
    ", mediana de ", round(mediana,2),
    " e desvio padrão de ", round(dp,2),
    ", com valores mínimo e máximo de ", min_val, " e ", max_val, ".\n\n"
  ))
}
