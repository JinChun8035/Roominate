import SwiftUI

struct ContentView: View {
    
    
    
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
                        print("Open settings")
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
                
                NavigationView {
                    NavigationLink(destination: ScheduleView()) {
                        Text("Schedule")
                            .foregroundStyle(.black)
                    }
                }
        
                NavigationView {
                    NavigationLink(destination: ScheduleView()) {
                        Text("Expenses")
                            .foregroundStyle(.black)
                    }
                }
                
                NavigationView {
                    NavigationLink(destination: ScheduleView()) {
                        Text("Messaging")
                            .foregroundStyle(.black)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
