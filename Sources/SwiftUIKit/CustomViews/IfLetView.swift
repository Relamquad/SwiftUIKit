//
//  File.swift
//  
//
//  Created by Konstantin Kalivod on 21.10.2020.
//

import SwiftUI

@available(iOS 13, *)
public struct IfLetView<Value, Content: View>: View {
    let value: Value?
    var content: (Value) -> Content
    
    public init(value: Value?, @ViewBuilder content: @escaping (Value) -> Content) {
        self.value = value
        self.content = content
    }
    
    public var body: some View {
        Group {
            if value != nil {
                content(value!)
            }
        }
    }
}
