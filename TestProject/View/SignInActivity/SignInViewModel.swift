import SwiftUI
import FirebaseCore
import FirebaseAuth
import GoogleSignIn


class SignInViewModel: ObservableObject {
    
    @Published var isLoading = false
    @Published var path = NavigationPath()
    
    
    func loadUserDataOrCreateNew() {
    
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {

            self.path.removeLast(self.path.count)
            self.path.append("BuyTickets")
        }
    }
    
    func googleSignIn() {
        
        isLoading = true
        
        guard let clientID = FirebaseApp.app()?.options.clientID else { return }
        
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        GIDSignIn.sharedInstance.signIn(withPresenting: getRootViewController()) { result, error in
            guard error == nil else {
                self.self.isLoading = false
                print("Error en Google Sign-In: \(String(describing: error))")
                return
            }
            
            guard let user = result?.user,
                  let idToken = user.idToken?.tokenString else {
                self.self.isLoading = false
                print("No se pudo obtener el usuario o el token")
                return
            }
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken, accessToken: user.accessToken.tokenString)
            
            Auth.auth().signIn(with: credential) { result, error in
                guard error == nil else {
                    self.self.isLoading = false
                    print("Error en Firebase Sign-In: \(String(describing: error))")
                    return
                }
                
                // Llamar a la función para cargar datos o navegar
                self.loadUserDataOrCreateNew()
            }
        }
    }
}
