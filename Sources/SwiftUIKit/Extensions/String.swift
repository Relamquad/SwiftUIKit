//
//  File.swift
//  
//
//  Created by Konstantin Kalivod on 21.10.2020.
//

import SwiftUI

public extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }
    
    func lowcaseFirstLetter() -> String {
        return prefix(1).lowercased() + dropFirst()
    }
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}

public extension String {
    var verifyUrl: Bool {
        if let url = NSURL(string: self) {
            return UIApplication.shared.canOpenURL(url as URL)
        }
        
        return false
    }
}
