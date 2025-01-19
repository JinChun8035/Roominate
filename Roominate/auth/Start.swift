import SwiftUI

struct Start: View {
    
    @State private var login = false
    @State private var signup = false
    var body: some View {
        if (login) {
            LoginView()
        }else if (signup) {
            SignUpView()
        } else {
            
            ZStack {
                
                // Background colour
                Color(.systemMint)
                    .ignoresSafeArea()
                VStack {
                    Button(action: {
                        login=true;
                    }) {
                        Text("Login")
                            .foregroundStyle(.black)
                            .frame(width: 300, height: 80)
                            .background(.white)
                    }
                    Button(action: {
                        signup=true;
                    }) {
                        Text("Signup")
                            .foregroundStyle(.black)
                            .frame(width: 300, height: 80)
                            .background(.white)
                    }
                }
            }
        
        }
    }
}

#Preview {
    Start()
}
