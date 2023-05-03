#1A pendistribusian banyak bayi laki-laki
dbinom(0:10, size = 10, prob = 0.488, log=FALSE)

#1B tepat tiga bayi di antaranya berjenis kelamin laki-laki
dbinom(3, size = 10, prob = 0.488, log=FALSE)

#1C kurang dari tiga bayi di antaranya berjenis kelamin laki-laki
pbinom(2, size = 10, prob = 0.488, lower.tail = TRUE, log.p = FALSE)

#1D tiga atau lebih bayi di antaranya berjenis kelamin laki-laki
1 - pbinom(2, size = 10, prob = 0.488, lower.tail = TRUE, log.p = FALSE)

#1E nilai harapan dan simpangan baku banyak bayi laki-laki
nilai_harapan = 10 * 0.488
simpangan_baku = sqrt(10 * 0.488 * (1 - 0.488))

#1F Penggambaran Histogram
# Tentukan jumlah kelahiran dan probabilitas bayi laki-laki
n <- 10
p <- 0.488

# Hitung probabilitas kejadian
prob <- dbinom(0:n, size = n, prob = p)

# Buat histogram
barplot(prob, names.arg = 0:n, xlab = "Banyak Bayi Laki-laki", ylab = "Probabilitas")

