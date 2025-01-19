import SwiftUI

struct MainView: View {
    
    
    
    var body: some View {
        
        ZStack {
            
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack {
                
                HStack(alignment: .top) {
                    // Logo
                    Rectangle()
                        .cornerRadius(15)
                        .frame(width: 50.0, height: 50.0)
                    Spacer()
                    // Settings
                    Button {
                        addRoommate()
                    } label: {
                        Rectangle()
                            .cornerRadius(15)
                            .frame(width: 50.0, height: 50.0)
                    }
                }
                
                // Profile picture
                Rectangle()
                    .cornerRadius(15)
                    .frame(width: 200, height: 200)
                Text("name")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                Spacer()
                
                // Instant alerts
                HStack {
                    Spacer()
                    Rectangle()
                        .cornerRadius(15)
                        .frame(width: 80.0, height: 80.0)
                    Spacer()
                    Rectangle()
                        .cornerRadius(15)
                        .frame(width: 80.0, height: 80.0)
                    Spacer()
                    Rectangle()
                        .cornerRadius(15)
                        .frame(width: 80.0, height: 80.0)
                    Spacer()
                    Rectangle()
                        .cornerRadius(15)
                        .frame(width: 80.0, height: 80.0)
                    Spacer()
                }
                
                // Navigation
                
                NavigationView {
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }
                }
                
                RoundedRectangle(cornerRadius: 3)
                    .frame(height: 80.0)
                RoundedRectangle(cornerRadius: 3)
                    .frame(height: 80.0)
                RoundedRectangle(cornerRadius: 3)
                    .frame(height: 80.0)
            }
            .padding()
        }
    }
    
    func addRoommate() {
        print("Add roommate")
    }
}

#Preview {
    MainView()
}
