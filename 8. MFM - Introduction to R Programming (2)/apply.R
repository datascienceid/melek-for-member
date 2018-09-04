score = sample(10:100, 20)
score_mat = matrix(score, byrow = TRUE, ncol = 5)
score_mat

score_list = list(math = score_mat[,1], bio = score_mat[,2],
                  pro = score_mat[,3], phy = score_mat[,4],
                  che = score_mat[,5])

score_list_2 = list(score_list[[1]] / 2, score_list[[2]] / 2,
                    score_list[[3]] / 2, score_list[[4]] / 2,
                    score_list[[5]] / 2)
score_list
score_list_2

#Apply Family
apply(score_mat, 1, mean)

lapply(score_list, mean)

sapply(score_list, mean)

sum_apply = function(arg1, arg2){
  return(arg1 + arg2)
}

mapply(sum_apply, score_list, score_list_2)