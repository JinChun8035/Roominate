import SwiftUI

struct SignUpView: View {
    @StateObject private var viewModel = SignUpViewModel()

    
    @State private var goback = false
    var body: some View {
        if (goback) {
            Start()
        } else {
            
            ZStack {
                
                // Background colour
                Color(.systemMint)
                    .ignoresSafeArea()
                VStack(spacing: 20) {
                    
                    
                    Button(action: {
                        goback=true;
                    }) {
                        Text("Return")
                            .foregroundStyle(.white)
                    }
                    Text("Sign Up")
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
                    
                    // Email Field
                    TextField("Email", text: $viewModel.email)
                        .padding()
                    //                .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                    //                .keyboardType(.emailAddress)
                    //                .autocapitalization(.none)
                    
                    // Password Field
                    SecureField("Password", text: $viewModel.password)
                        .padding()
                    //                .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                    
                    // Confirm Password Field
                    SecureField("Confirm Password", text: $viewModel.confirmPassword)
                        .padding()
                    //                .background(Color(UIColor.systemGray6))
                        .cornerRadius(10)
                    
                    // Sign Up Button
                    Button(action: {
                        viewModel.handleSignUp()
                    }) {
                        Text("Sign Up")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .cornerRadius(10)
                            .foregroundStyle(.black)
                            .background(.white)
                    }
                    
                    Spacer()
                }
                .padding()
                .alert(isPresented: $viewModel.showAlert) {
                    Alert(title: Text("Sign Up"), message: Text(viewModel.alertMessage), dismissButton: .default(Text("OK")))
                }
            }
        }
    }
}

//@main
//struct MyApp: App {
//    var body: some Scene {
//        WindowGroup {
//            SignUpView()
//        }
//    }
//}
