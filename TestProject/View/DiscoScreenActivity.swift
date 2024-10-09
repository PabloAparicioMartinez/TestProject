import SwiftUI

struct DiscoScreenActivity: View {
    
    let discoData: DiscoData
    let constants = Constants()
    @State private var contentLoaded = false
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(.gray)

            VStack(spacing: 0) {
                
                DiscoView(discoData: discoData)
                    .padding(.top, 12)
                    .padding(.horizontal, 16)
                
                MiddleView()
                    .padding(.vertical, 12)
                    .padding(.horizontal, 16)
                
                if !contentLoaded {
                    
                    ProgressView()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                        .scaleEffect(x: 1.5, y: 1.5)
                        .tint(.darkBlue1)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                                withAnimation {
                                    contentLoaded = true
                                }
                            }
                        }
                    
                } else {
                    
                    NavigationStack {
                        List(TestRepository().events) { event in
                            
                            ZStack {
                                EventItem(eventData: event)
                                NavigationLink(destination: {}) { EmptyView() }.opacity(0)
                            }
                            .listRowInsets(EdgeInsets())
                        }
                    }
                    .listStyle(.plain)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.horizontal, 16)
                    .padding(.bottom, 16)
                    .shadow(color: Color.black.opacity(0.3), radius: 8, x: 0, y: 5)
                    .background(.lightBlue2)
                }
            }
            .background(.lightBlue2)
        }
        .toolbar {
            ToolbarComponent()
        }
        .toolbarBackground(.white, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

struct MiddleView:View {
    
    let constants = Constants()
    @State var date = Date()
    
    var body: some View {
        
        HStack(alignment: .bottom) {
            
            Text("Fiestas:")
                .frame(alignment: .leading)
                .font(Font.custom(constants.robotoBlack, size: 26))
            
            Spacer()
            
            Button(action: {
                
            }) {
                HStack(spacing: 12) {
                    Image("ic_calendar_02")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    
                    Text("Todas las fiestas")
                        .font(Font.custom(constants.robotoRegular, size: 12))
                        .bold()
                }
                .padding()
            }
            .background(.darkBlue1)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            /*DatePicker("AA", selection: $date, displayedComponents: .date)
                .labelsHidden()*/
        }
        .frame(maxHeight: 48)
    }
}

#Preview {
    DiscoScreenActivity(discoData: DiscoData(discoName: "NOVA", discoLocation: "Olabeaga Kaia, 21, Basurtu-Zorrotza, 48013 Bilbo", discoMusic: "Electrónica & EDM", discoImage: "NOVA"))
}
