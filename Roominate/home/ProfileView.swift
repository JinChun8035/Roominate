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
            
            Button(action: {
                goback=true;
            }) {
                Text("Return")
                    .foregroundStyle(.black)
            }
            
            Text("SettingsView, World!")
            
            VStack {
                Text("User: Eva")
                Text("Room: " + roomviewmodel.roomCode)
                
                Text("")
                Text("")
                Text("")
                Text("Under construction: leave room, sign out, delete account, change password")
            }
        }
    }
}

#Preview {
    ProfileView()
}
