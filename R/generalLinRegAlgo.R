#Linear regression algorithm

estimate_coeff <- function(x, y){
  n = length(x)
  
  m_x = mean(x)
  m_y = mean(y)
  
  #cross derivation about x
  SS_xy = sum(y*x) - n*m_y*m_x
  SS_xx = sum(x*x) - n*m_x*m_x
  
  #regression coefficients
  b_1 = SS_xy / SS_xx
  b_0 = m_y - b_1*m_x
  
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