//
//  ScheduleView.swift
//  Roominate
//
//  Created by Rachel Chiu on 2025-01-18.
//

import SwiftUI

struct AlertsView: View {
    
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
                    
                    Text("AlertsView, World!")
                }
            }
        }
    }
}

#Preview {
    ScheduleView()
}
