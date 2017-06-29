x<-NG_1_1_1[0:300000,]$CH2_MoTRQ
#x <- 1:4
fft(x)
all(fft(fft(x), inverse = TRUE)/(x*length(x)) == 1+0i)
eps <- 1e-11 ## 一般に、正確ではないが、それでも:
for(N in 1:130) {
  cat("N=",formatC(N,wid=3),": ")
  x <- rnorm(N)
  if(N %% 5 == 0) {
    m5 <- matrix(x,ncol=5)
    cat("mvfft:",all(apply(m5,2,fft) == mvfft(m5)),"")
  }
  dd <- Mod(1 - (f2 <- fft(fft(x), inverse=TRUE)/(x*length(x))))
  cat(if(all(dd < eps))paste(" all < ", formatC(eps)) else
    paste("NO: range=",paste(formatC(range(dd)),collapse=",")),"\n")
}

plot(fft(c(9:0,0:13, numeric(301))), type = "l")
periodogram <- function(x, mean.x = mean(x)) { # 簡単なペリオドグラム
  n <- length(x)
  x <- unclass(x) - mean.x
  Mod(fft(x))[2:(n%/%2 + 1)]^2 / (2*pi*n) # I(0) を取り除く
}
data(sunspots)
plot(10*log10(periodogram(sunspots)), type = "b", col = "blue")