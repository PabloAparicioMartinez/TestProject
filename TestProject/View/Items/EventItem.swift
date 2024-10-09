import SwiftUI

struct EventItem: View {
    
    var eventData: EventData
    let constants = Constants()
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            HStack(spacing: 8) {
                
                Image("ic_calendar_02")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 16, height: 16)
                    .foregroundStyle(.black)
                
                Text(eventData.eventDate)
                    .frame(alignment: .bottom)
                    .font(Font.custom(constants.robotoRegular, size: 13))
                    .bold()
                    .foregroundColor(.black)
                    .lineLimit(1)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding(.init(top: 0, leading: 36, bottom: 10, trailing: 24))
            
            HStack(spacing: 0) {
                
                Image(eventData.eventImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 95)
                    .clipped()
                    .overlay(Rectangle().stroke(Color.black, lineWidth: 2))
                
                VStack(spacing: 0) {
                    
                    Text(eventData.eventName)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(Font.custom(constants.robotoBlack, size: 22))

                    Spacer()
                    
                    HStack {
                        Image(systemName: "music.note")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 18, height: 18)
                            .foregroundStyle(.darkGrey2)
                        
                        Text(eventData.eventMusic)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(Font.custom(constants.robotoRegular, size: 12))
                            .foregroundStyle(.darkGrey2)
                            .lineLimit(1)
                    }
                    
                    HStack(spacing: 0) {
                        Image("ic_friends_01")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 18, height: 18)
                            .foregroundStyle(.darkGrey2)
                        
                        Text(eventData.eventFriends)
                            .frame(alignment: .leading)
                            .font(Font.custom(constants.robotoRegular, size: 12))
                            .bold()
                            .padding(.leading, 6)
                            .foregroundStyle(.black)
                        
                        Text(" van a la fiesta")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(Font.custom(constants.robotoRegular, size: 12))
                            .foregroundStyle(.darkGrey2)
                    }
                    .padding(.top, 2)
                    
                    HStack(spacing: 2) {
                        
                        Text("Entradas")
                            .frame(alignment: .leading)
                            .font(Font.custom(constants.robotoRegular, size: 12))
                            .foregroundStyle(.darkGrey2)
                        
                        Text(eventData.eventAvailability)
                            .font(Font.custom(constants.robotoBlack, size: 13))
                            .foregroundStyle(.green)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding(.top, 6)
                }
                .frame(maxWidth: .infinity, alignment: .top)
                .padding(.leading, 22)

                Image("ic_arrow_02")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 18, height: 18)
                    .padding(.leading, 6)
                    .foregroundStyle(.darkBlue1)
            }
            .padding(.horizontal, 24)
            
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(.gray)
                .padding(.top, 12)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 140)
        .padding(.horizontal, 0)
        .padding(.top, 14)
    }
}

#Preview {
    EventItem(eventData: EventData(eventDate: "Lunes, 27 de septiembre de 2024", eventImage: "NUBES", eventName: "NUBES +22", eventMusic: "Reggeaton", eventFriends: "2 amigos", eventAvailability: "DISPONIBLES"))
}
