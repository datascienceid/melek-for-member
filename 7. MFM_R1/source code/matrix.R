# Matrix
mat = matrix(c(1:9), byrow = TRUE, nrow = 3)
mat

book1 <- c(100, 120)
book2 <- c(110, 90)
book3 <- c(120, 80)

book_mat = matrix(c(book1, book2, book3), byrow = TRUE, nrow = 3)
book_mat

#naming matrix
colnames(book_mat) = c("uptown", "downtown")
book_mat
rownames(book_mat) = c("book1", "book2", "book3")
book_mat

#merge matrix
another_books = seq(from = 100, to = 50, by = -10)
ab_mat = matrix(another_books, byrow = T, nrow = 3)

colnames(ab_mat) = c("uptown", "downtown")
rownames(ab_mat) = c("book4", "book5", "book6")
ab_mat

all_mat = rbind(book_mat, ab_mat)
all_mat

inter_mat = matrix(c(100,80,90,70,120,150), byrow = TRUE, nrow = 6)

colnames(inter_mat) = c("international")

books_mat = cbind(all_mat, inter_mat)
books_mat

#Slicing
books_mat[1,]
books_mat[,3]
books_mat["book1",]
books_mat[,"international"]
books_mat[1:4, 1:2]

#operations
rowSums(books_mat)
colSums(books_mat)
mean(books_mat[,"international"])
books_mat / 10

t(books_mat)
det(mat)