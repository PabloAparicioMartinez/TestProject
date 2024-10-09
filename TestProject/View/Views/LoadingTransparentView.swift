import SwiftUI

struct LoadingTransparentView: View {
    
    var body: some View {
        
        ZStack {
            
            Color.black.opacity(0.32)
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: 80, height: 80)
                    .foregroundStyle(.white)
                
                ProgressView()
                    .scaleEffect(x: 1.5, y: 1.5)
                    .tint(.darkBlue1)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    LoadingTransparentView()
}
