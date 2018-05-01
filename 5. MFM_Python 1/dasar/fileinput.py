f = open("data.txt","r") #open file "data" for input
S1 = f.read() #read whole data into one string
f.close() #close a file
f = open("data.txt","r")
N=10 #define N
S2 = f.read(N) #Reads N bytes (N >= 1)
f.close()
f = open("data.txt","r")
S3 = f.readline() #Returns a list of line strings
f.close()

print S1
print S2
print S3
