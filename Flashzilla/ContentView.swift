//
//  ContentView.swift
//  Flashzilla
//
//  Created by Brandon Knox on 6/11/21.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State private var scale: CGFloat = 1
    
    var body: some View {
        Text("Hello, World!")
            .scaleEffect(scale)
            .onTapGesture {
                if self.reduceMotion {
                    self.scale *= 1.5
                } else {
                    withAnimation {
                        self.scale *= 1.5
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
