//
//  ProfileVIew.swift
//  Roominate
//
//  Created by Rachel Chiu on 2025-01-18.
//

import SwiftUI

struct ProfileView: View {
    
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
        }
        
            VStack {
                HStack {
                    NavigationLink(destination: ProfileView()) {
                        Image("logoPlaceholder")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(15)
                    }
                    Spacer()
    //                NavigationStack {
    //                    NavigationLink {
    //                        SettingsView()
    //                    } label: {
    //                        Image(systemName: "gearshape")
    //                            .resizable()
    //                            .frame(width: 50, height: 50)
    //                    }
    //
    //                }
                }
                
                Text("name")
                
                Group {
                    Text("Test")
                }
                .background(Color(red: 255.0, green: 155.0, blue: 100.0))
            }
    }
}

#Preview {
    ProfileView()
}
