import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()

    @State private var goback = false
    var body: some View {
        if (goback) {
            Start()
        } else if (viewModel.isAuthenticated){
            ContentView()
        } else{
            VStack(spacing: 20) {
                Button(action: {
                    goback=true;
                }) {
                    Text("Return")
                }
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 40)
                
                Spacer()
                
                // Username Field
                TextField("Username", text: $viewModel.username)
                    .padding()
                //                .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                //                .autocapitalization(.none)
                
                // Password Field
                SecureField("Password", text: $viewModel.password)
                    .padding()
                //                .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                
                // Login Button
                Button(action: {
                    viewModel.handleLogin()
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
            .padding()
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Login"), message: Text(viewModel.alertMessage), dismissButton: .default(Text("OK")))
            }
            //        .fullScreenCover(isPresented: $viewModel.isAuthenticated) {
            //            ContentView() // Replace with the view you want to show after successful login
            //        }
        }
    }
}

//struct MainView: View {
//    var body: some View {
//        VStack {
//            Text("Welcome to the Main Screen!")
//                .font(.largeTitle)
//                .bold()
//                .padding()
//
//            Text("You are now logged in.")
//                .font(.subheadline)
//        }
//    }
//}
//
//@main
//struct MyApp: App {
//    var body: some Scene {
//        WindowGroup {
//            LoginView()
//        }
//    }
//}
