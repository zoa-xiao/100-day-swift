# Array input (pakai list biasa)
arr = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

# Rotasi 90 derajat
def rotasi_90(arr):
    baris = len(arr)
    kolom = len(arr[0])
    hasil = [[0] * baris for _ in range(kolom)]
    for i in range(baris):
        for j in range(kolom):
            hasil[j][baris - 1 - i] = arr[i][j]
    return hasil


# Rotasi 180 derajat
def rotasi_180(arr):
    baris = len(arr)
    kolom = len(arr[0])
    hasil = [[0] * kolom for _ in range(baris)]
    for i in range(baris):
        for j in range(kolom):
            hasil[baris - 1 - i][kolom - 1 - j] = arr[i][j]
    return hasil


# Rotasi 270 derajat
def rotasi_270(arr):
    baris = len(arr)
    kolom = len(arr[0])
    hasil = [[0] * baris for _ in range(kolom)]
    for i in range(baris):
        for j in range(kolom):
            hasil[kolom - 1 - j][i] = arr[i][j]
    return hasil


# Fungsi Print Array
def print_array(arr):
    for baris in arr:
        print(baris)


# Tampilkan Hasil

print("Input:")
print_array(arr)

print("\nRotasi 90°:")
print_array(rotasi_90(arr))

print("\nRotasi 180°:")
print_array(rotasi_180(arr))

print("\nRotasi 270°:")
print_array(rotasi_270(arr))