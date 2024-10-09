import SwiftUI
import FirebaseCore
import FirebaseAuth
import GoogleSignIn


struct SignInActivity: View {
    
    @StateObject private var viewModel = SignInViewModel()
    @State private var isSplashAnimating = true
    
    var body: some View {
        
        NavigationStack(path: $viewModel.path) {
            Group {
                if isSplashAnimating {
                    SplashScreenView()
                } else {
                    if viewModel.isLoading {
                        ZStack {
                            SignInLayout(googleSignInAction: viewModel.googleSignIn)
                            LoadingTransparentView()
                        }
                    } else {
                        SignInLayout(googleSignInAction: viewModel.googleSignIn)
                    }
                }
            }
            .navigationDestination(for: String.self) { destination in
                if destination == "BuyTickets" {
                    BuyTicketsActivity()
                }
            }
        }
        .onAppear {
            print("Appear")
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                isSplashAnimating = false
            }
        }
    }
}

func getRootViewController() -> UIViewController {
    guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
        return .init()
    }
    
    guard let root = screen.windows.first?.rootViewController else {
        return .init()
    }
    
    return root
}

#Preview {
    SignInActivity()
}
