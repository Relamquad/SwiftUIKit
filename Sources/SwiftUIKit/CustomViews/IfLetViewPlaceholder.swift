//
//  File.swift
//  
//
//  Created by Konstantin Kalivod on 21.10.2020.
//

import SwiftUI

@available(iOS 13, *)
public struct IfLetViewPlaceholder<Value, Content: View, Placeholder: View>: View {
    let value: Value?
    var content: (Value) -> Content
    var placeholder: () -> Placeholder
    
    public init(value: Value?, @ViewBuilder content: @escaping (Value) -> Content, @ViewBuilder placeholder: @escaping () -> Placeholder) {
        self.value = value
        self.content = content
        self.placeholder = placeholder
    }
    
    public var body: some View {
        Group {
            if value != nil {
                content(value!)
            } else {
                placeholder()
            }
        }
    }
}
