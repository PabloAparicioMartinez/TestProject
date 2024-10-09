import SwiftUI


struct SignInLayout: View {
    
    var googleSignInAction: () -> Void
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            VStack(spacing: 0) {
                
                Text("NoQueues")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.custom(Constants().robotoBlack, size: 36))
                    .padding(EdgeInsets(top: 16, leading: 24, bottom: 0, trailing: 24))
                
                Text("La aplicación de compra de entradas de discoteca más rápida y sencilla")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(Font.custom(Constants().robotoRegular, size: 16))
                    .padding(EdgeInsets(top: 22, leading: 24, bottom: 24, trailing: 24))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.darkBlue1)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .shadow(color: Color.black.opacity(0.4), radius: 8, x: 0, y: 5)
            .padding(16)
            
            Spacer()
            
            Text("Iniciar sesión:")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(Font.custom(Constants().robotoBlack, size: 26))
                .padding(.horizontal, 16)
            
            // BUTTON INICIAR SESIÓN CON CORREO
            Button(action: {
                //
            }) {
                
                HStack {
                    Image("ic_mail_02")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                        .tint(.white)
                    
                    Text("INICIAR SESIÓN CON CORREO")
                        .font(Font.custom(Constants().robotoBlack, size: 14))
                        .foregroundColor(.white)
                        .padding(.leading, 6)
                }
                .padding(.vertical, 16)
            }
            .frame(maxWidth: .infinity)
            .background(.darkBlue1)
            .cornerRadius(8)
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 16))
            
            HStack(spacing: 0) {
                
                Rectangle()
                    .frame(height: 1)
                    .padding(.trailing, 12)
                    .foregroundStyle(.greyDivider2)
                
                Text("o")
                    .font(Font.custom(Constants().robotoRegular, size: 12))
                    .foregroundColor(.greyDivider2)
                    .padding(.bottom, 1.5)
                
                Rectangle()
                    .frame(height: 1)
                    .padding(.leading, 12)
                    .foregroundStyle(.greyDivider2)
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            
            
            // BUTTON INICIAR SESIÓN CON GOOGLE
            Button(action: {
                googleSignInAction()
            }) {
                HStack {
                    Image("ic_google_01")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 22, height: 22)
                    .foregroundColor(.darkBlue1)
                
                Text("INICIAR SESIÓN CON GOOGLE")
                    .font(Font.custom(Constants().robotoBlack, size: 14))
                    .foregroundColor(.darkBlue1)
                    .padding(.leading, 6)
                }
                .padding(.vertical, 16)
            }
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(8)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(.darkBlue1, lineWidth: 2))
            .padding(.horizontal, 16)
            
            Spacer()
            
            Text("NQ v0.0.0")
                .font(Font.custom(Constants().robotoRegular, size: 14))
                .foregroundStyle(.darkGrey2)
                .padding(14)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.lightBlue2)
    }
}


/*#Preview {
    SignInLayout()
}*/
