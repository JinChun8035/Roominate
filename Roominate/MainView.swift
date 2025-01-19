import SwiftUI

struct MainView: View {
    var body: some View {
        
        ZStack {
            
            Color(red: 229.0, green: 236.0, blue: 255.0)
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    // Logo
                    Image("logoPlaceholder")
                        .resizable()
                        .cornerRadius(15)
                        .aspectRatio(contentMode: .fit)
                    // Add roommate
                    RoundedRectangle(cornerRadius: 3)
                        .frame(width: 50.0, height: 50.0)
                }
                
                // Profile picture
                RoundedRectangle(cornerRadius: 3)
                    .frame(width: 200, height: 200)
                Text("name")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                Spacer()
                
                // Instant alerts
                HStack {
                    // Lower the volume
                    Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                        /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                        /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
                    }
                    
                    // Custom
                    
                }
                
                // Navigation
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
}

#Preview {
    MainView()
}
