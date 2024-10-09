import SwiftUI

var numeros = [
    Numero(name: "uno"),
    Numero(name: "dos"),
    Numero(name: "tres"),
    Numero(name: "cuatro")
]

struct ListComponent: View {
    var body: some View {
        
//        List(numeros) { numero in
//            Text(numero.name)
//        }
        
        List {
            Section(header: Text("NUMEROS")) {
                ForEach(numeros) { numero in
                    Text(numero.name)
                }
            }
        }
        .listStyle(.automatic)
    }
}

struct Numero: Identifiable {
    var id = UUID()
    let name: String
}

#Preview {
    ListComponent()
}
