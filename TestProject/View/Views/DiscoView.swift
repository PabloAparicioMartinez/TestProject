import SwiftUI

struct DiscoView: View {
    
    let discoData: DiscoData
    let constants = Constants()
    
    var body: some View {
        
        HStack(spacing: 0) {
            Image(discoData.discoImage)
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .overlay(Rectangle().stroke(Color.black, lineWidth: 2))
                
            VStack {
                Text(discoData.discoName)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.custom(constants.robotoBlack, size: 26))
                    .fontWeight(.heavy)
                
                Spacer()
                
                HStack {
                    Image("ic_ubication_03")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.darkGrey2)
                    
                    Text(discoData.discoLocation)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(Font.custom(constants.robotoRegular, size: 12))
                        .foregroundStyle(.darkGrey2)
                        .lineLimit(2)
                }
            }
            .padding(.leading, 22)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 75)
        .padding(.vertical, 16)
        .padding(.horizontal, 24)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .shadow(color: Color.black.opacity(0.4), radius: 8, x: 0, y: 5)
    }
}

#Preview {
    DiscoView(discoData: DiscoData(discoName: "BACK&STAGE", discoLocation: "Olabeaga Kaia, 21, Basurtu-Zorrotza, 48013 Bilbo", discoMusic: "Electrónica & EDM", discoImage: "BACK&STAGE"))
}
