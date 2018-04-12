#vector
wallet <- c(100, 90, 80, 55, 10, 20, 40)
names(wallet) <- c("minggu", "senin", "selasa", "rabu", "kamis", "jumat", "sabtu")
wallet
debt <- c(80, 10, 25, 5, 10, 40, 120)
names(debt) <- c("minggu", "senin", "selasa", "rabu", "kamis", "jumat", "sabtu")
debt

sisa = wallet - debt
sisa

sisa_fun = function(sisa){
  temp <- sisa
  x <- 0
  b <- 1
  for (i in sisa) {
    x = x + i
    temp[b] = x
    b = b + 1
  }
  return(temp)
}

sisa_fun(sisa)

mean(wallet)
sum(wallet)
max(wallet)
min(wallet)
sqrt(wallet)
abs(wallet)

#Quiz
#How to make it exponential like
#minggu senin selasa rabu kamis jumat sabtu
#20      100    155   205  205   185   105

# Slicing
wallet[c(2:4)]

wallet[2:4]
wallet["senin":"rabu"]
selected <- wallet > 50
selected
wallet[selected]

