#------------------------------------------------------------------#
# UniformSamples
# Ejemplo 1. Simular con R Commander 100 datos para 12 variables aleatorias uniformes definidas en (0, 1). 
# Tomar la variable suma y analizarla.

UniformSamples <- as.data.frame(matrix(runif(12*100, min=0, max=1), 
  ncol=100))
rownames(UniformSamples) <- paste("sample", 1:12, sep="")
colnames(UniformSamples) <- paste("obs", 1:100, sep="")
UniformSamples <- within(UniformSamples, {
  sum <- rowSums(UniformSamples[,1:100])
})

# Histogram to UniformSamples
with(UniformSamples, Hist(sum, scale="frequency", breaks="Sturges", 
  col="darkgray"))


#------------------------------------------------------------------#
# PoissonSamples
# Ejemplo 2. Simular con R Commander 100 datos para 20 variables aleatorias de
# Poisson de media 1. Tomar la variable suma y analizarla.
PoissonSamples <- as.data.frame(matrix(rpois(20*100, lambda=1), ncol=100))
rownames(PoissonSamples) <- paste("sample", 1:20, sep="")
colnames(PoissonSamples) <- paste("obs", 1:100, sep="")
PoissonSamples <- within(PoissonSamples, {
  sum <- rowSums(PoissonSamples[,1:100])
})

# Histograma PoissonSamples
with(PoissonSamples, Hist(sum, scale="frequency", breaks="Sturges", 
  col="darkgray"))

# Pese a que el n es mayor a 30 no llegamos a una forma normal estandar clara.

#------------------------------------------------------------------#
# PoissonSamples 2
# Ejemplo 3. Simular con R Commander 100 datos para 100 variables aleatorias de
# Poisson de media 0.01. Tomar la variable suma y analizarla.
PoissonSamples2 <- as.data.frame(matrix(rpois(100*100, lambda=0.01), ncol=100))
rownames(PoissonSamples2) <- paste("sample", 1:100, sep="")
colnames(PoissonSamples2) <- paste("obs", 1:100, sep="")
PoissonSamples2 <- within(PoissonSamples, {
  sum <- rowSums(PoissonSamples2[,1:100])
})


# Histograma PoissonSamples
with(PoissonSamples2, Hist(sum, scale="frequency", breaks="Sturges", 
  col="darkgray"))





