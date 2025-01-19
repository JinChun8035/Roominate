import SwiftUI

struct LoginScreen: View {
    
    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()
    @State private var navigateToMainView = false
    
    var body: some View {
        if navigateToMainView {
            MainView()
        } else {
            VStack {
                Text("Welcome!")
                    .font(.largeTitle)
                    .padding()

                Button(action: {
                    navigateToMainView = true
                }) {
                    Text("Go to Main View")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }
        }
//        VStack {
//            
//            Spacer()
//            
//            VStack {
//                TextField(
//                    "Login.UsernameField.Title",
//                    text: $viewModel.username
//                )
////                .autocapitalization(.none)
//                .disableAutocorrection(true)
////                .padding(.top, 20)
//                
//                Divider()
//                
//                SecureField(
//                    "Login.PasswordField.Title",
//                    text: $viewModel.password
//                )
//                .padding(.top, 20)
//                
//                Divider()
//            }
//            
//            Spacer()
//            
//            Button(
//                action: viewModel.login,
//                label: {
//                    Text("Login.LoginButton.Title")
//                        .font(.system(size: 24, weight: .bold, design: .default))
//                        .frame(maxWidth: .infinity, maxHeight: 60)
//                        .foregroundColor(Color.white)
//                        .background(Color.blue)
//                        .cornerRadius(10)
//                }
//            )
//            NavigationLink(destination: MainView()) {
//                Button(action: {}) {}
//            }
//            
//            NavigationView {
//                NavigationLink(destination: MainView()) {
//                    Text("Go to Main View")
//                        .font(.title2)
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color.blue)
//                        .cornerRadius(8)
//                }
//            }
//        }
//        .padding(30)
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}


