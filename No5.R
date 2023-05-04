#5A probabilitas terjadinya suatu peristiwa acak X kurang dari -2,34 dengan 6 derajat
pt(-2.34, 6, lower.tail = TRUE, log.p = FALSE)

#5B probabilitas terjadinya suatu peristiwa acak X lebih dari 1,34 dengan 6 derajat
1 - pt(1.34, 6, lower.tail = TRUE, log.p = FALSE)

#5C probabilitas terjadinya suatu peristiwa acak X kurang dari -1,23 atau lebih besar dari 1,23 dengan 3 derajat kebebasan
pt(-1.23, 3) + (1 - pt(1.23, 3))

#5D probabilitas terjadinya suatu peristiwa acak X di antara -0,94dan 0,94 dengan 14 derajat
pt(0.94, 14) - pt(-0.94, 14)

#5E nilai t-score dengan 5 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di sebelah kiri t-score
qt(0.0333, 5, lower.tail = TRUE, log.p = FALSE)

#5F nilai t-score dengan 25 derajat kebebasan yang memiliki luasan 0,125 satuan persegi di bawah kurva dan di sebelah kanan t-score
qt(0.125*2, 25, lower.tail=FALSE)

#5G nilai t-score dengan 11 derajat kebebasan yang memiliki luasan 0,75 satuan persegi di bawah kurva dan di antara t-score tersebut dan negatif dari nilai t-score
luasan = 0.75
t_score1 = qt((1-luasan)/2, 11)
t_score2 = -t_score1
c(t_score1, t_score2)

#5H nilai t-score dengan 23 derajat kebebasan yang memiliki luasan 0,0333 satuan persegi di bawah kurva dan di luar interval antara t-score tersebut dan negatif dari nilai t-score 
luasan = 0.0333
t_score = qt(1-luasan, 23)
c(qt(luasan/2, 23), qt(1-luasan/2, 23))
if (t_score > 0) {
  c(qt(1-luasan/2, 23, lower.tail=FALSE), t_score)
} else {
  c(t_score, qt(luasan/2, 23))
}