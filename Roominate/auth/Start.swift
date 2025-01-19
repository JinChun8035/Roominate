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
            Button(action: {
                login=true;
            }) {
                Text("Login")
                    .foregroundStyle(.black)
            }
            Button(action: {
                signup=true;
            }) {
                Text("Signup")
                    .foregroundStyle(.black)
            }
        
        }
    }
}

#Preview {
    ScheduleView()
}
