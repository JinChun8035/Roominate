import SwiftUI
import UserNotifications

struct ContentView: View {
    
    @State private var pags = 0
    @State private var notifTitle = "Please lower your volume"
    @State private var notifContent = "Your volume is too high"
    @State private var popUp = false
    
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
                
                // Background colour
                Color(.systemMint)
                    .ignoresSafeArea()
                
                VStack {
                    // Header
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            HStack {
                                
                                Text("Hello")
                                    .font(.title)
                                Button("Eva") {
                                    pags = 5
                                }
                                // TODO: button shows username and navigates to profile
                            } .font(.title)
                            Text("Welcome To Simpler Shared Living")
                        } .foregroundStyle(.white)
                        Spacer()
                        // Settings
                        Button(action: {
                            pags=6;
                        }) {
                            Image(systemName: "gearshape")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(.white)
                        }
                    }
                    Spacer()
                    
                    // Quick Alerts
                    Text("Anonymous Quick Alerts")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                    HStack {
                        VStack {
                            Button(action: {
                                pags=6;
                            }) {
                                Image(systemName: "speaker.slash")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.white)
                            }

                                Menu("User") {
                                    Button("Eva") {
                                        popUp = true
                                        // TODO: notification to user
                                    }
                                } .foregroundStyle(.white)
                        }
                            Spacer()
                            
                            Button(action: {
                                pags=6;
                            }) {
                                Image(systemName: "person.2.slash")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.white)
                            }
                            Spacer()
                            
                            Button(action: {
                                pags=6;
                            }) {
                                Image(systemName: "bubbles.and.sparkles")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.white)
                            }
                        } .padding()
                        Spacer()
                        
                        //Navigation
                        Button(action: {
                            pags=1;
                        }) {
                            Text("Schedule")
                                .foregroundStyle(.black)
                                .frame(width: 300, height: 80)
                                .background(.white)
                        }
                        
                        Button(action: {
                            pags=2;
                        }) {
                            Text("Calendar")
                                .foregroundStyle(.black)
                                .frame(width: 300, height: 80)
                                .background(.white)
                        }
                        
                        Button(action: {
                            pags=3;
                        }) {
                            Text("Finance")
                                .foregroundStyle(.black)
                                .frame(width: 300, height: 80)
                                .background(.white)
                        }
                        
                        Button(action: {
                            pags=4;
                        }) {
                            Text("Alerts")
                                .foregroundStyle(.black)
                                .frame(width: 300, height: 80)
                                .background(.white)
                        }
                    }
                    .padding()
                    .alert(isPresented: $popUp) {
                        Alert(title: Text("Lower Your Volume"), message: Text("A roommate requests that you lower your volume"), dismissButton: .default(Text("OK")))
                    }
                
//                if popUp {
//                    VStack {
//                        Text("Please lower your volume")
//                            .frame(width: 100, height: 50)
//                            .background(.black)
//                            .foregroundStyle(.white)
//                        Button("Ok") {
//                            popUp = false
//                        }
//                        .frame(width: 100, height: 30)
//                        .background(.gray)
//                    }
//                }
                
                }
            }
        }
    
    
//    func checkForPermission() {
//        let notificationCenter = UNUserNotificationCenter.current()
//        notificationCenter.getNotificationSettings { settings in
//            switch settings.authorizationStatus {
//            case .authorized:
//                self.dispatchNotification()
//            case .denied:
//                return
//            case .notDetermined:
//                notificationCenter.requestAuthorization(options: [.alert, .badge, .sound]) { didAllow, error in
//                    if didAllow {
//                        self.dispatchNotification()
//                    }
//                }
//            default:
//                return
//            }
//            }
//    }
//    
//    func dispatchNotification() {
//        let notificationCenter = UNUserNotificationCenter.current()
//        
//        let content = UNMutableNotificationContent()
//        content.title = notifTitle
//        content.body = notifContent
//        content.sound = .default
//        
//        // let trigger = UN
//    }
}

#Preview {
    ContentView()
}
