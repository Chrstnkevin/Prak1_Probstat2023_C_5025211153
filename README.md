# Prak1_Probstat2023_C_5025211153
Modul 1 Praktikum Probabilitas dan Statistik 2023 Distribusi Probabilitas

Nama  : Christian Kevin Emor 

NRP   : 5025211153

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

