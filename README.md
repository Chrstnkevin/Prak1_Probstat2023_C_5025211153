# Prak1_Probstat2023_C_5025211153
Modul 1 Praktikum Probabilitas dan Statistik 2023 Distribusi Probabilitas

Nama  : Christian Kevin Emor 

NRP   : 5025211153

* [Soal No1](https://github.com/Chrstnkevin/Prak1_Probstat2023_C_5025211153/edit/main/README.md#soal-no-1)
   * [No 1A](https://github.com/Chrstnkevin/Prak1_Probstat2023_C_5025211153/edit/main/README.md#a-bagaimana-pendistribusian-banyak-bayi-laki-laki-tentukan-distribusi-dengan-parameter-yang-sesuai)
   * [No 1B](https://github.com/Chrstnkevin/Prak1_Probstat2023_C_5025211153/edit/main/README.md#b-berapa-probabilitas-bahwa-tepat-tiga-bayi-di-antaranya-berjenis-kelamin-laki-laki)
   * [No 1C](https://github.com/Chrstnkevin/Prak1_Probstat2023_C_5025211153/edit/main/README.md#c-berapa-probabilitas-bahwa-kurang-dari-tiga-bayi-di-antaranya-berjenis-kelamin-laki-laki)
   * [No 1D](https://github.com/Chrstnkevin/Prak1_Probstat2023_C_5025211153/edit/main/README.md#d-berapa-probabilitas-bahwa-tiga-atau-lebih-bayi-di-antaranya-berjenis-kelamin-laki-laki)
   * [No 1E](https://github.com/Chrstnkevin/Prak1_Probstat2023_C_5025211153/edit/main/README.md#e-berapa-nilai-harapan-dan-simpangan-baku-banyak-bayi-laki-laki)
   * [No 1F](https://github.com/Chrstnkevin/Prak1_Probstat2023_C_5025211153/edit/main/README.md#f-gambarkan-histogram-pendistribusian-banyak-bayi-laki-laki)
    
## Soal No 1

Probabilitas seorang bayi yang baru lahir berjenis kelamin laki-laki adalah 0,488.
Jika kita asumsikan bahwa dalam satu hari di rumah sakit terdapat 10 kelahiran,
maka:


##### A. Bagaimana pendistribusian banyak bayi laki-laki? Tentukan distribusi dengan parameter yang sesuai.
Dalam konsep distribusi binomial, kita dapat menghitung peluang keberhasilan dalam suatu jumlah percobaan tertentu, asalkan setiap percobaan independen dan hanya memiliki dua hasil (sukses atau gagal). Probabilitas keberhasilan harus tetap sama setiap kali percobaan dilakukan. Fungsi dbinom(0:n, n, p) digunakan untuk menghitung peluang keberhasilan dalam jumlah percobaan n dan probabilitas keberhasilan p. Outputnya akan memberikan nilai peluang keberhasilan untuk setiap jumlah bayi laki-laki yang mungkin.

*note: untuk melihat rumus bisa mengakses modul 1 halaman 4 bagian 2.Distribusi Binomial*
```
dbinom(0:10, size = 10, prob = 0.488, log=FALSE)
```
Penjelasan dari codingan tersebut:

- `0:10` menunjukkan jumlah bayi laki-laki yang mungkin, dari 0 sampai 10.
- `size = 10` menunjukkan jumlah total percobaan, yaitu 10 kelahiran.
- `prob = 0.488` menunjukkan probabilitas keberhasilan, yaitu kemungkinan seorang bayi baru lahir berjenis kelamin laki-laki sebesar 0,488.
- `log=FALSE` menunjukkan output yang dihasilkan adalah nilai probabilitas langsung, bukan logaritma probabilitas.

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235852108-990fbd96-a6aa-4a43-a531-4f41ec0e23e5.png)

 
##### B. Berapa probabilitas bahwa tepat tiga bayi di antaranya berjenis kelamin laki-laki?
Dalam soal ini, kita juga menggunakan konsep distribusi binomial dengan fungsi dbinom(3, n, p), dimana x bernilai 3 dan n merupakan jumlah percobaan yang dilakukan. Probabilitas keberhasilan dalam setiap percobaan adalah p. Fungsi ini akan menghitung peluang terjadinya tiga kelahiran bayi laki-laki dalam sehari di rumah sakit. Output dari fungsi ini adalah nilai probabilitas kejadian tersebut.

```
dbinom(3, size = 10, prob = 0.488, log=FALSE)
```
Penjelasan dari codingan tersebut:

- `3` menunjukkan jumlah bayi laki-laki tepat 3
- `size = 10` menunjukkan jumlah total percobaan, yaitu 10 kelahiran.
- `prob = 0.488` menunjukkan probabilitas keberhasilan, yaitu kemungkinan seorang bayi baru lahir berjenis kelamin laki-laki sebesar 0,488.
- `log=FALSE` menunjukkan output yang dihasilkan adalah nilai probabilitas langsung, bukan logaritma probabilitas.

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235852666-a122e67d-9100-49a5-b49a-f09f9e9587b5.png)


##### C. Berapa probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki?
Untuk menjawab soal yang memiliki suatu batasan dalam distribusi binomial, kita bisa menggunakan pbinom. pbinom adalah fungsi dalam matematika yang digunakan untuk menghitung probabilitas kumulatif dari distribusi binomial. Fungsi ini umumnya digunakan untuk menemukan peluang suatu kejadian yang terjadi tidak lebih dari atau sama dengan nilai tertentu dari variabel acak dalam distribusi binomial.

```
pbinom(2, size = 10, prob = 0.488, lower.tail = TRUE, log.p = FALSE)
```
Penjelasan dari codingan tersebut:

- Angka `2` menunjukkan nilai batas yang ingin dicari probabilitas kumulatifnya. Mengapa 2? karena pada soal diminta bahwa <3 bayi sehingga diambillah angka 2
- `size = 10` adalah banyaknya percobaan yang dilakukan dalam distribusi binomial.
- `prob = 0.488` adalah probabilitas kejadian sukses dalam setiap percobaan.
- `lower.tail = TRUE` digunakan untuk mencari probabilitas kumulatif kurang dari atau sama dengan nilai yang ditentukan.
- `log.p = FALSE` digunakan untuk menunjukkan bahwa output dari fungsi ini bukan dalam bentuk logaritmik.

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235855376-f40dd590-861d-4494-acfd-8c327fa04f69.png)


##### D. Berapa probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki?
Untuk mencari probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki, kita dapat menggunakan fungsi pbinom pada R dengan menghitung probabilitas komplementer (probabilitas bahwa kurang dari tiga bayi di antaranya berjenis kelamin laki-laki) dan kemudian menguranginya dari 1. Atau kita juga dapat menggunakan fungsi 1 - pbinom untuk langsung menghitung probabilitas bahwa tiga atau lebih bayi di antaranya berjenis kelamin laki-laki.

```
1 - pbinom(2, size = 10, prob = 0.488, lower.tail = TRUE, log.p = FALSE)
```
Penjelasan dari codingan tersebut:

- `1 - pbinom()` digunakan untuk menghitung probabilitas komplementer dari distribusi binomial
- Angka `2` menunjukkan nilai batas yang ingin dicari probabilitas kumulatifnya. Mengapa 2? karena pada soal diminta bahwa <3 bayi sehingga diambillah angka 2
- `size = 10` adalah banyaknya percobaan yang dilakukan dalam distribusi binomial.
- `prob = 0.488` adalah probabilitas kejadian sukses dalam setiap percobaan.
- `lower.tail = TRUE` digunakan untuk mencari probabilitas kumulatif kurang dari atau sama dengan nilai yang ditentukan.
- `log.p = FALSE` digunakan untuk menunjukkan bahwa output dari fungsi ini bukan dalam bentuk logaritmik.

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235857038-9997c230-fd38-4807-baa7-f8302f96ddb2.png)


##### E. Berapa nilai harapan dan simpangan baku banyak bayi laki-laki?
Untuk menghitung nilai harapan dan simpangan baku dari distribusi binomial, kita dapat menggunakan rumus-rumus berikut:
- Nilai harapan atau mean = n * p, dimana n adalah jumlah percobaan dan p adalah probabilitas kejadian sukses.
- Simpangan baku atau standard deviation = sqrt(n * p * (1 - p))
```
nilai_harapan = 10 * 0.488
simpangan_baku = sqrt(10 * 0.488 * (1 - 0.488))
```
Penjelasan dari codingan tersebut:
- n = 10 (jumlah kelahiran) 
- p = 0,488 (probabilitas bayi laki-laki)
- nilai harapan atau mean dapat dihitung sebagai 10 * 0,488 = 4,88 bayi laki-laki. Sedangkan, simpangan baku atau standard deviation dapat dihitung sebagai sqrt(10 * 0,488 * (1 - 0,488)) = 1,57 bayi laki-laki.

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235859912-b38270b6-809b-4eae-a5c8-65fe5157711c.png)


##### F. Gambarkan histogram pendistribusian banyak bayi laki-laki
Untuk menggambarkan histogram pendistribusian banyak bayi laki-laki menggunakan distribusi binomial, kita dapat menggunakan fungsi dbinom() dan barplot()
```
# Tentukan jumlah kelahiran dan probabilitas bayi laki-laki
n <- 10
p <- 0.488

# Hitung probabilitas kejadian
prob <- dbinom(0:n, size = n, prob = p)

# Buat histogram
barplot(prob, names.arg = 0:n, xlab = "Banyak Bayi Laki-laki", ylab = "Probabilitas")
```
Penjelasan dari codingan tersebut:
pertama-tama kita menentukan jumlah kelahiran n dan probabilitas bayi laki-laki p yang sudah diketahui. 
- gunakan fungsi dbinom() untuk menghitung probabilitas kejadian dengan argumen size = n dan prob = p. 
- Hasil tersebut diplot ke dalam histogram menggunakan fungsi barplot() dengan names.arg untuk menentukan label pada sumbu x dan xlab serta ylab untuk memberikan label pada sumbu x dan y.

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235862621-c83623ca-823b-4c6e-8229-524ab5fbdfcb.png)

## Soal No 2
Misalkan banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik ban dalam 20 tahun ke depan adalah 1,8.

##### A. Bagaimana pendistribusian banyak kematian karena kanker tulang? Tentukan distribusi dengan parameter yang sesuai
Distribusi banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik ban dalam 20 tahun ke depan dapat dijelaskan menggunakan distribusi Poisson dengan parameter lambda = 1,8. Distribusi Poisson digunakan karena banyak kematian adalah suatu variabel diskrit dan tidak negatif, serta distribusinya tidak memiliki batasan atas. Dalam distribusi Poisson, lambda merupakan nilai harapan dan merepresentasikan rata-rata banyaknya kejadian yang terjadi dalam suatu interval waktu atau ruang. Oleh karena itu, dengan parameter lambda = 1,8, distribusi Poisson dapat mengestimasi banyak kematian karena kanker tulang untuk seluruh pekerja di pabrik ban dalam 20 tahun ke depan.

```
dpois(0:10, 1.8, log = FALSE)
```

Penjelasan dari codingan tersebut:
- `0:10` merupakan vektor nilai k yang merepresentasikan banyak kematian karena kanker tulang yang mungkin terjadi dalam 20 tahun ke depan. Dalam hal ini, nilai k berkisar antara 0 hingga 10.
- `1.8` merupakan parameter lambda yang digunakan dalam distribusi Poisson untuk mengestimasi probabilitas terjadinya kematian karena kanker tulang.
- `log = FALSE` adalah argumen opsional yang menentukan apakah hasil yang dihasilkan berupa logaritma natural (jika log = TRUE) atau bukan (jika log = FALSE). Dalam hal ini, argumen tersebut diatur menjadi FALSE, sehingga hasil yang dihasilkan adalah probabilitas kematian karena kanker tulang dalam bentuk bilangan biasa.

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235912938-028b771e-7336-44f3-931b-fc27bc16b7c0.png)


##### B. Ada 4 kematian akibat kanker tulang yang dilaporkan di kalangan pekerja pabrik ban, apakah itu peristiwa yang tidak biasa? Hitung probabilitas berdasarkan distribusi yang telah dipilih.
Untuk menentukan apakah 4 kematian akibat kanker tulang di kalangan pekerja pabrik ban termasuk peristiwa yang tidak biasa, kita dapat menggunakan distribusi Poisson dengan parameter lambda = 1,8 yang telah ditentukan sebelumnya.

```
dpois(4, 1.8, log = FALSE)
```
Dalam hal ini, probabilitas terjadinya 4 kematian akibat kanker tulang dengan parameter lambda = 1,8 tidak terlalu rendah atau tinggi dibandingkan dengan nilai probabilitas yang lain. Oleh karena itu, dapat dikatakan bahwa peristiwa 4 kematian akibat kanker tulang di kalangan pekerja pabrik ban tidak terlalu tidak biasa.

Penjelasan dari codingan tersebut:
- `4` merupakan nilai k yang merepresentasikan banyak kematian karena kanker tulang yang mungkin terjadi dalam 20 tahun ke depan. Dalam hal ini, nilai k adalah 4.

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235914599-4b3dbb50-175d-4992-bc55-8cf1a63a546e.png)


##### C. Berapa peluang paling banyak 4 kematian akibat kanker tulang?
Untuk menjawab pertanyaan ini, kita dapat menggunakan fungsi ppois() di R untuk menghitung probabilitas kematian akibat kanker tulang kurang dari atau sama dengan 4 dalam 20 tahun ke depan. Fungsi ppois() digunakan untuk menghitung probabilitas variabel acak diskrit pada distribusi Poisson.

```
ppois(4, 1.8, lower.tail = TRUE, log.p = FALSE)
```
Penjelasan dari codingan tersebut:
- `4` merupakan nilai paling banyak 4 kematian

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235916793-af08f5b9-2573-45df-9957-2153bd12567a.png)


##### D. Berapa peluang lebih dari 4 kematian akibat kanker tulang?
Untuk menjawab pertanyaan ini, kita dapat menggunakan fungsi ppois() di R. Karena fungsi ppois() menghitung probabilitas yang lebih kecil dari atau sama dengan nilai x yang diberikan, maka kita perlu menghitung probabilitas terjadinya kematian akibat kanker tulang kurang dari atau sama dengan 4, dan kemudian menguranginya dari 1 untuk mendapatkan probabilitas terjadinya kematian akibat kanker tulang lebih dari 4.

```
1 - ppois(4, 1.8, lower.tail = TRUE, log.p = FALSE)
```
Penjelasan dari codingan tersebut:
- `1 - ppois()` digunakan untuk menghitung probabilitas variabel acak diskrit pada distribusi Poisson yang lebih besar dari suatu nilai tertentu (x). Karena ppois() menghitung probabilitas kumulatif yang lebih kecil dari atau sama dengan nilai x, kita dapat mengurangi nilai probabilitas yang dihasilkan dari 1 untuk mendapatkan probabilitas yang lebih besar dari x.

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235917806-30a8e3e0-8e17-46bf-b4a6-f3c1d5d1ba8f.png)


##### E. Berdasarkan distribusi yang telah dipilih, berapakah nilai harapan dan standar deviasi banyak kematian akibat kanker tulang untuk pekerja pabrik ban?
Berdasarkan distribusi Poisson yang telah dipilih, nilai harapan (mean) dan standar deviasi (standard deviation) banyak kematian akibat kanker tulang untuk pekerja pabrik ban dapat dihitung dengan menggunakan rumus sebagai berikut:
- Nilai harapan (mean) = lambda
- Standar deviasi (standard deviation) = akar kuadrat dari lambda
Dalam hal ini, nilai lambda yang diberikan adalah 1.8, sesuai dengan parameter distribusi Poisson yang telah diberikan sebelumnya.

```
nilai_harapan = 1.8
standar_deviasi = sqrt(1.8)
```
Penjelasan dari codingan tersebut:
- `sqrt` merupakan fungsi di r untuk mendapatkan akar

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235920613-339c8024-abb5-4601-b01c-271953d3bc96.png)


##### F. Gambarkan histogram pendistribusian banyak banyak kematian akibat kanker tulang untuk pekerja pabrik ban.
Kita akan membuat histogram dengan distribusi Poisson

```
# Tentukan parameter distribusi Poisson
lambda <- 1.8

# Membuat vektor data simulasi untuk distribusi Poisson
sim_data <- rpois(n = 1000, lambda = lambda)

# Menggambar histogram
hist(sim_data, breaks = seq(-0.5, max(sim_data) + 0.5, 1), 
     main = "Histogram Distribusi Poisson",
     xlab = "Jumlah Kematian",
     ylab = "Frekuensi")
```
Penjelasan dari codingan tersebut:
- Pertama-tama, menggunakan fungsi `rpois` untuk menghasilkan 1000 nilai acak dari distribusi Poisson dengan parameter `lambda = 1.8`.
- Kemudian, hasilnya disimpan dalam variabel `x`.
- Fungsi `hist` digunakan untuk menghasilkan histogram dengan membagi nilai-nilai dalam 20 interval.
- Opsi `main` digunakan untuk memberikan judul pada grafik.
- Opsi `xlab` dan `ylab` digunakan untuk memberikan label pada sumbu x dan sumbu y.

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235924786-74c78be2-1340-4054-85ba-b9049bb56034.png)


##### G.  Gunakan simulasi untuk memeriksa hasil sebelumnya.
Kita akan membuat simulasi dengan distribusi Poisson. Simulasi ini akan menampilkan 4 kematian, >4 kematian dan paling banyak terjadi 4 kematian. Untuk memeriksa hasil sebelumnya, kita dapat melakukan simulasi dengan menggunakan fungsi rpois()

```
set.seed(123)  
n_sim <- 10000 
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
```

###### OUTPUT
![image](https://user-images.githubusercontent.com/97864068/235928407-17028b78-2e59-44ff-8ee6-5f3e95f1d2f3.png)


##### H. Jelaskan banyak kematian akibat kanker tulang berdasarkan simulasi Anda. Bandingkan jawaban pada pertanyaan 2d dengan hasil simulasi Anda.
Kita akan membuat simulasi dengan distribusi Poisson. Simulasi ini akan menampilkan 4 kematian, >4 kematian dan paling banyak terjadi 4 kematian. Untuk memeriksa hasil sebelumnya, kita dapat melakukan simulasi dengan menggunakan fungsi rpois()

```
Berdasarkan simulasi, 12.1% kasus memiliki 4 atau lebih kematian akibat kanker tulang, sedangkan menggunakan fungsi ppois hanya 0.000004565562%. Proporsi kasus dengan 4 atau kurang kematian akibat kanker tulang adalah 96.3% berdasarkan simulasi dan 99.99999999999999% berdasarkan fungsi ppois. Meski terdapat perbedaan, hal tersebut tidak signifikan karena jumlah simulasi yang dilakukan masih sedikit. Semakin banyak simulasi, hasilnya akan semakin mendekati perhitungan menggunakan fungsi ppois.
```
