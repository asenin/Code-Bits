#Linear regression algorithm

estimate_coeff <- function(x, y){
  n = length(x)
  
  #Determination des moyennes des x et y du dataset
  m_x = mean(x)
  m_y = mean(y)
  
  SC_xy = sum(y*x) - n*m_y*m_x #sommes des carées de xy i.e covariance
  SC_xx = sum(x*x) - n*m_x*m_x #somme des carées de xx i.e variance
  
  
  
  #estimation des moindres carées
  b_1 = cov(x, y) / var(x) #ordonée a l'origine
  b_0 = m_y - b_1*m_x #pente de la droite
  
  b <- c(b_0, b_1)
  
  return(b)
}

plot_regress_l <- function(x, y, b){
  
  #plot
  plot(x, y)
  
  abline(b, col = "red", lwd=3)
}

data("cars")

speed <- cars$speed
dist <- cars$dist

b = estimate_coeff(speed, dist)

plot_regress_l(speed, dist, b)