import SwiftUI


struct BuyTicketsActivity: View {
    
    let constants = Constants()
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            HStack {
                
                Text("DISCOTECAS:")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .font(Font.custom(constants.robotoBlack, size: 26))
                    .bold()
                
                HStack {
                    Image("ic_loupe_full_01")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .foregroundStyle(.darkGrey3)
                    
                    Image("ic_filter_02")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 26, height: 26)
                        .padding(.trailing, 6)
                        .foregroundStyle(.darkGrey3)
                }
                .frame(height: 42)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .frame(height: 36)
            .padding(.init(top: 16, leading: 16, bottom: 0, trailing: 16))
            
            List(TestRepository().discos) { disco in
                            NavigationLink(destination: DiscoScreenActivity(discoData: disco)) {
                                DiscoItem(discoData: DiscoData(discoName: disco.discoName, discoLocation: disco.discoLocation, discoMusic: disco.discoMusic, discoImage: disco.discoImage))
                            }
                            .listRowInsets(EdgeInsets())
                        }
                        .listStyle(.plain)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .padding(.horizontal, 16)
                        .shadow(color: Color.black.opacity(0.3), radius: 8, x: 0, y: 5)
                        .background(.lightBlue2)
                        .padding(.top, 8)
            
            /*NavigationStack {
                List(TestRepository().discos) { disco in
                    ZStack {
                        DiscoItem(discoData: DiscoData(discoName: disco.discoName, discoLocation: disco.discoLocation, discoMusic: disco.discoMusic, discoImage: disco.discoImage))
                        
                        NavigationLink(destination: DiscoScreenActivity(discoData: disco)) { EmptyView() }.opacity(0)
                    }
                    .listRowInsets(EdgeInsets())
                }
                .listStyle(.plain)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal, 16)
                .shadow(color: Color.black.opacity(0.3), radius: 8, x: 0, y: 5)
                .background(.lightBlue2)
            }
            .padding(.top, 8)*/
        }
        .navigationBarHidden(true)
        .background(.lightBlue2)
    }
}

#Preview {
    BuyTicketsActivity()
}

/*#Preview {
    DiscoItem(discoName: "SONORA", discoUbication: "Muelle Ereaga Kaia, 3, 48992 Getxo, Bizkaia, Spain", discoMusic: "Reggeaton y latina")
}*/
