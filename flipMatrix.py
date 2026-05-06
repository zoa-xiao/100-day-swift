# flip matrix
mat = [[1,2,3],
       [4,5,6],
       [7,8,9]]

matx = [[0,0,0],
        [0,0,0],
        [0,0,0]]

maty = [[0,0,0],
        [0,0,0],
        [0,0,0]]


# sumbu x = horizontal(1,2,3 - bawah ke atas)
for i in range(len(mat)):
    for j in range(len(mat[0])):
        # matx[i][j] = mat[len(mat)-1-i][j]
        matx[i][j] = mat[len(mat)-1-i][j]


# sumbu y = vertikal (3,2,1)
for k in range(len(mat)):
    for l in range(len(mat[0])):
        maty[l][k] = mat[k][len(mat[0])-1-l]

print(matx)
print(maty)



# Rotasi : 90, 270, 180 derajat