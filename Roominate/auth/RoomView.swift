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
    
    var body: some View {
        Button("Create new room") {
            viewModel.createRoom()
            // TODO: nav to content view and 
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

#Preview {
    RoomView()
}
