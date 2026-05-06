# kalikan baris dengan kolom

A = [[1, 2],
     [3, 4]]

B = [[5, 6],
     [7, 8]]

# buat matrix hasil berisi 0
hasil = [[0, 0],
         [0, 0]]

if len(A[0]) != len(B):
    print("invalid")

else:
# perkalian
    for i in range(len(A)):          # loop baris A
        for j in range(len(B[0])):   # loop kolom B
            for k in range(len(B)):  # loop baris B
                hasil[i][j] = hasil[i][j] + A[i][k] * B[k][j]
                print(f"{hasil[i][j]} = {hasil[i][j]} + {A[i][k]} * {B[k][j]} => {hasil[i][j]}")

print(hasil)
# Output: [[19, 22], [43, 50]]


# psedocode

# for i = 0 to (b1-1) do
#     for j = 0 to (k2-1) do
#         for k = 0 to (b2-1) do
#             hasil[i][j] <- hasil[i][j] + A[i][k] * B[k][j]
    #         endfor
    #     endfor
    # endfor