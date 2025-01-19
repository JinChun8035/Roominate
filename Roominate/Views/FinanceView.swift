//
//  ScheduleView.swift
//  Roominate
//
//  Created by Rachel Chiu on 2025-01-18.
//

import SwiftUI

struct FinanceView: View {
    
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
            
            Text("ContentView, World!")
        }
    }
}

#Preview {
    ScheduleView()
}
