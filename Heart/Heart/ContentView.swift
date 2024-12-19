//
//  ContentView.swift
//  Heart
//
//  Created by STUDENT on 8/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var colorChange = false
    @State private var sizeChange = false
    
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .font(.system(size: 200))
                .foregroundColor(colorChange ? .blue : .red)
                .scaleEffect(sizeChange ? 1.5 : 1)
                .animation(.default, value: colorChange)
                .animation(.easeInOut, value: sizeChange)
                .onTapGesture {
                    colorChange.toggle()
                }
                .onLongPressGesture(perform: {
                    sizeChange.toggle()
                })
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("I love you baby")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
