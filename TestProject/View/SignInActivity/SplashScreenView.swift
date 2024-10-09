import SwiftUI

struct SplashScreenView: View {
    
    var body: some View {
        
        ZStack {
            
            Image("ic_splash_Logo_11")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding(48)
            
            VStack {
                Spacer()
                ProgressView()
                    .scaleEffect(x: 1.35, y: 1.35)
                    .tint(.darkBlue1)
                    .padding(.bottom, 48)
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.lightBlue2)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SplashScreenView()
}
