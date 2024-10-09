import SwiftUI

struct DiscoItem: View {
    
    let discoData: DiscoData
    let constants = Constants()
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            HStack(spacing: 0) {
                
                Image(discoData.discoImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipped()
                    .overlay(Rectangle().stroke(Color.black, lineWidth: 2))
                
                VStack(spacing: 0) {
                    Text(discoData.discoName)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(Font.custom(constants.robotoBlack, size: 24))
                    
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
                    
                    HStack(spacing: 6) {
                        Image(systemName: "music.note")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.darkGrey2)
                        
                        Text(discoData.discoMusic)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(Font.custom(constants.robotoRegular, size: 12))
                            .foregroundStyle(.darkGrey2)
                            .lineLimit(1)
                    }
                    .padding(.top, 2)
                }
                .frame(maxWidth: .infinity)
                .padding(.leading, 16)
                
                Image("ic_arrow_02")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 18, height: 18)
                    .padding(.leading, 6)
                    .foregroundStyle(.darkBlue1)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 95)
            .padding(.horizontal, 24)
            .padding(.top, 16)
            
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(.gray)
                .padding(.top, 16)
        }
        //.background(.blue)
    }
}


#Preview {
    DiscoItem(discoData: DiscoData(discoName: "BACK&STAGE", discoLocation: "Olabeaga Kaia, 21, Basurtu-Zorrotza, 48013 Bilbo", discoMusic: "Electrónica & EDM", discoImage: "FEVER"))
}
