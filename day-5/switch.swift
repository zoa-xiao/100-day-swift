enum hari {
    case senin, selasa, rabu, kamis, jumat, sabtu, minggu
}

let day = hari.senin

switch day {
case .senin:
    print("Hari ini adalah hari senin")
case .selasa :
    print("Hari ini adalah hari selasa")
case .rabu :
    print("Hari ini adalah hari rabu")
case .kamis :
    print("Hari ini adalah hari kamis")
case .jumat :
    print("Hari ini adalah hari jumat")
case .sabtu :
    print("Hari ini adalah hari sabtu")
case .minggu :
    print("Hari ini adalah hari minggu")        
    
default:
    print("Hari ini tidak diketahui")
    
}