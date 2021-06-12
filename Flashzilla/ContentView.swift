//
//  ContentView.swift
//  Flashzilla
//
//  Created by Brandon Knox on 6/11/21.
//

import SwiftUI

struct ContentView: View {
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Text("Hello, World!")
            .onReceive(timer) { time in
                print("The time is now \(time)")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
