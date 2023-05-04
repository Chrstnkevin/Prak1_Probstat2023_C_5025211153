#4A data bangkitan acak dalam bentuk grafik
# Tentukan rata-rata, standar deviasi, X1, dan X2
rataan = 45
standar_deviasi = 5
X1 = floor(rataan)
X2 = ceiling(rataan)
# Hitung z-score untuk X1 dan X2
z1 = (X1 - rataan) / standar_deviasi
z2 = (X2 - rataan) / standar_deviasi

# Hitung probabilitas P(X1 ≤ x ≤ X2)
prob = pnorm(X2, mean = rataan, sd = standar_deviasi) - pnorm(X1, mean = rataan, sd = standar_deviasi)

# Cetak hasil
cat("Probabilitas P(X1 ≤ x ≤ X2) =", prob, "\n")
cat("Z-score untuk X1 =", z1, "\n")
cat("Z-score untuk X2 =", z2, "\n")

# Bangkitkan data acak
set.seed(123)
data = rnorm(1000, mean = rataan, sd = standar_deviasi)

# Plot data
plot(data, type = "l", lwd = 2, col = "blue", xlab = "Observasi", ylab = "Nilai")
abline(v = X1, col = "red", lty = 2, lwd = 2)
abline(v = X2, col = "red", lty = 2, lwd = 2)
text(X1, par("usr")[4], pos = 3, col = "red", paste("X1 = ", X1), xpd = TRUE)
text(X2, par("usr")[4], pos = 3, col = "red", paste("X2 = ", X2), xpd = TRUE)
text(par("usr")[2], par("usr")[4] - 0.1, pos = 1, col = "black", paste("Data Bangkitan Acak Distribusi Normal ", prob))



#4B Menggambar Histogram
# Generate data acak dari distribusi normal
data = rnorm(100, mean = 45, sd = 5)

# Menggambarkan histogram dengan 50 breaks
hist(data, breaks = 50, main = "Histogram Distribusi Normal", xlab = "Nilai", ylab = "Frekuensi", col = "purple")



#4C Nilai varian (σ²)
# Generate data acak dari distribusi normal
data = rnorm(100, mean = 45, sd = 5)
# Menghitung variansi dari data acak
variasi = var(data)
variasi


