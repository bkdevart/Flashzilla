//
//  ContentView.swift
//  Flashzilla
//
//  Created by Brandon Knox on 6/11/21.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
        Text("Hello, World!")
            .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
                print("Moving to the background!")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
