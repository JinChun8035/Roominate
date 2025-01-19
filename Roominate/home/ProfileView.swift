//
//  ProfileVIew.swift
//  Roominate
//
//  Created by Rachel Chiu on 2025-01-18.
//

import SwiftUI

struct ProfileView: View {    
    @StateObject private var roomviewmodel = RoomViewModel()
    
    
    @State private var goback = false
    var body: some View {
        if (goback) {
            ContentView()
        } else {
            
            ZStack {
                
                // Background colour
                Color(.systemMint)
                    .ignoresSafeArea()
                
                    VStack {
                        Button(action: {
                            goback=true;
                        }) {
                            Text("Return")
                                .foregroundStyle(.black)
                                .frame(width: 300, height: 80)
                                .background(.white)
                        }
                        Text("User: Aaa")
                        Text("Room: " + RoomViewModel().roomCode)
                        
                        Text("")
                        Text("")
                        Text("")
                        Text("Under construction: leave room, sign out, delete account, change password")
                    }
                }
            }
           
        }
    }


#Preview {
    ProfileView()
}
