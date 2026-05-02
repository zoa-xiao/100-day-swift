let footballPlayers = ["Messi", "Ronaldo", "Neymar", "Mbappe", "Salah", "Lewandowski", "Kane", "De Bruyne", "Hazard", "Griezmann","Ronaldo","Messi"]

let jumlahItems:Int = footballPlayers.count
let UniqNames:Set<String> = Set(footballPlayers)

print("jumlah pemain sepak bola (yang masih duplikate) : \(jumlahItems)")
print("nama pemain yang tidak duplikat : \(UniqNames.count)")
