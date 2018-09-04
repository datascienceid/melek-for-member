S1 = "Hello"
S2 = "World"
L = [S1,S2]
f = open("testout.txt","w")
f.write(S1) #Write the string S1 to file
f.write(S2) #Write the string S2 to file
f.write("\n") #write a new line notation to file
f.writelines(L) #Write each of the strings in list L
f.close()
