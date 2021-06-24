//
//  Card.swift
//  Flashzilla
//
//  Created by Brandon Knox on 6/13/21.
//

import Foundation

struct Card: Codable {
    let prompt: String
    var answer: String
//    var correct: Bool
    
    static var example: Card {
        Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")  // , correct: true
    }
}
