import SwiftUI

struct MenuView: View {
    var body: some View {
        
        NavigationStack {
            
            List {
                NavigationLink(destination: BuyTicketsActivity()) {
                    Text("No Queues")
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
