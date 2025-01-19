//
//  RoomViewModel.swift
//  Roominate
//
//  Created by Rachel Chiu on 2025-01-19.
//

import Foundation

class RoomViewModel: ObservableObject {
    @Published var roomCode = "Gx3Y" // TODO: fix bug where it doesn't actually update roomcode (need to save to JSON)
    @Published var emptyRoom = ""
    
    func createRoom() {
        roomCode = randomString(length: 4)
        
        // TODO: show rm # as popup, rm # will display in profile note that in popup
    }
    
    func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      return String((0..<length).map{ _ in letters.randomElement()! })
    }
}
