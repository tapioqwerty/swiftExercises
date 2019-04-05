//
//  PlayData.swift
//  Project-39-Unit-Testing
//
//  Created by Raul Sulaimanov on 04.04.19.
//  Copyright © 2019 Raul Sulaimanov. All rights reserved.
//

import Foundation

class PlayData {
    var allWords = [String]()
    
    init() {
        if let path = Bundle.main.path(forResource: "plays", ofType: "txt") {
            if let plays = try? String(contentsOfFile: path) {
                allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
            }
        }
    }
    
    
}