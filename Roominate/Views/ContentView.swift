import SwiftUI

struct ContentView: View {
    

    
    @State private var pags = 0
    var body: some View {
        if (pags == 1) {
            ScheduleView()
        } else if (pags == 2) {
            CalenderView()
        } else if (pags == 3) {
            FinanceView()
        } else if (pags == 4) {
            AlertsView()
        } else if (pags == 5) {
            ProfileView()
        } else if (pags == 6) {
            SettingsView()
        } else {
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
                        Button(action: {
                            pags=6;
                        }) {
                            Text("Settings")
                                .foregroundStyle(.black)
                        }
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
                    
                    Button(action: {
                        pags=5;
                    }) {
                        Text("Profile")
                            .foregroundStyle(.black)
                    }
                    
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
                    
                    Button(action: {
                        pags=1;
                    }) {
                        Text("Schedule")
                            .foregroundStyle(.black)
                    }
                    
                    Button(action: {
                        pags=2;
                    }) {
                        Text("Calender")
                            .foregroundStyle(.black)
                    }
                    
                    Button(action: {
                        pags=3;
                    }) {
                        Text("Finance")
                            .foregroundStyle(.black)
                    }
                    
                    Button(action: {
                        pags=4;
                    }) {
                        Text("Alerts")
                            .foregroundStyle(.black)
                    }
                    
                    //                NavigationView {
                    //
                    //                    NavigationLink(destination: Navigator()) {
                    //                        Text("Schedule")
                    //                            .foregroundStyle(.black)
                    //                    }
                    //                }
                    //
                    //                NavigationView {
                    //                    NavigationLink(destination: ScheduleView()) {
                    //                        Text("Expenses")
                    //                            .foregroundStyle(.black)
                    //                    }
                    //                }
                    //
                    //                NavigationView {
                    //                    NavigationLink(destination: ScheduleView()) {
                    //                        Text("Messaging")
                    //                            .foregroundStyle(.black)
                    //                    }
                    //                }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
