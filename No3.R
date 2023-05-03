#3A Fungsi probabilitas dari distribusi Chi-Square
dchisq(3, 10, ncp = 0, log = FALSE)

#3B Histogram
data = rchisq(n = 500, df = 10)
hist(data, main = "Distribusi Chi-Square 500 Data Acak", xlab = "Nilai X", ylab = "Frekuensi")

#3C
data = rchisq(n = 10000, 10)
rataan = mean(data)
varian = var(data)
rataan
varian
