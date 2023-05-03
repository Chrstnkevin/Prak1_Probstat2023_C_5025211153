#2A pendistribusian banyak kematian karena kanker tulang
dpois(0:10, 1.8, log = FALSE)

#2B 4 kematian, Apakah biasa?
dpois(4, 1.8, log = FALSE)

#2C peluang paling banyak 4 kematian akibat kanker tulang
ppois(4, 1.8, lower.tail = TRUE, log.p = FALSE)

#2D peluang lebih dari 4 kematian akibat kanker tulang
1 - ppois(4, 1.8, lower.tail = TRUE, log.p = FALSE)

#2E nilai harapan dan standar deviasi
nilai_harapan = 1.8
standar_deviasi = sqrt(1.8)

#2f Histogram
# Tentukan parameter distribusi Poisson
lambda <- 1.8

# Membuat vektor data simulasi untuk distribusi Poisson
sim_data <- rpois(n = 1000, lambda = lambda)

# Menggambar histogram
hist(sim_data, breaks = seq(-0.5, max(sim_data) + 0.5, 1), 
     main = "Histogram Distribusi Poisson",
     xlab = "Jumlah Kematian",
     ylab = "Frekuensi")

#2G 
set.seed(123)  # untuk membuat hasil simulasi menjadi sama setiap kali dijalankan
n_sim <- 10000  # jumlah simulasi yang dilakukan

# Menghasilkan data simulasi dengan distribusi Poisson
sim_data <- rpois(n_sim, lambda = 1.8)

# Menghitung jumlah simulasi yang menghasilkan 4 kematian akibat kanker tulang
n_4 <- sum(sim_data == 4)
prob_4 <- n_4 / n_sim

# Menghitung jumlah simulasi yang menghasilkan lebih dari 4 kematian akibat kanker tulang
n_more_than_4 <- sum(sim_data > 4)
prob_more_than_4 <- n_more_than_4 / n_sim

# Menghitung jumlah simulasi yang paling banyak menghasilkan 4 kematian akibat kanker tulang
n_max_4 <- max(table(sim_data))
prob_max_4 <- n_max_4 / n_sim

prob_4
prob_more_than_4
prob_max_4



