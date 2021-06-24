//
//  SettingsView.swift
//  Flashzilla
//
//  Created by Brandon Knox on 6/16/21.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var addMissedCards: Bool
    
    var body: some View {
        // Add a settings screen that has a single option: when you get an answer one wrong that card goes back into the array so the user can try it again.
        NavigationView {
            Section {
                List {
                    Toggle("Add wrong answers back into stack", isOn: $addMissedCards)
                }
                .navigationBarTitle("Settings")
                .navigationBarItems(trailing: Button("Done", action: dismiss))
                .navigationViewStyle(StackNavigationViewStyle())
            }
        }
        
    }
    
    func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
}
