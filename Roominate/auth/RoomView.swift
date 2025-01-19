//
//  RoomView.swift
//  Roominate
//
//  Created by Rachel Chiu on 2025-01-19.
//

import SwiftUI

struct RoomView: View {
    
    @State private var pags = 0
    
    @StateObject private var viewModel = RoomViewModel()
    
    @State private var goback = false
    var body: some View {
        if (goback) {
            ContentView()
        } else {
            Button("Create new room") {
                viewModel.createRoom()
                // TODO: nav to content view and
                goback = true
            }
            
            Text("")
            Text("")
            Text("")
            
            TextField("ROOM CODE", text: $viewModel.roomCode)
                .padding()
                .border(.gray)
            Button("Join existing room") {
                // action
            }
        }
    }
}

#Preview {
    RoomView()
}
