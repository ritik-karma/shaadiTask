//
//  ContentView.swift
//  shaadTask
//
//  Created by Ritik Karma on 23/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Find you")
                Text("first")
                    .foregroundStyle(.red)
            }
            HStack{
                Text("Meta")
                    .foregroundStyle(.red)
                Text("Matches")
            }
        }
        .font(.title)
    }
}

#Preview {
    ContentView()
}
