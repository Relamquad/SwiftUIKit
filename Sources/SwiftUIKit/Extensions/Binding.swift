//
//  File.swift
//  
//
//  Created by Konstantin Kalivod on 21.10.2020.
//

import Foundation
import SwiftUI

@available(iOS 13, *)
public extension Binding {
    /// Wrapper to listen to didSet of Binding
    func didSet(_ didSet: @escaping ((newValue: Value, oldValue: Value)) -> Void) -> Binding<Value> {
        return .init(get: { self.wrappedValue }, set: { newValue in
            let oldValue = self.wrappedValue
            self.wrappedValue = newValue
            didSet((newValue, oldValue))
        })
    }
    
    /// Wrapper to listen to willSet of Binding
    func willSet(_ willSet: @escaping ((newValue: Value, oldValue: Value)) -> Void) -> Binding<Value> {
        return .init(get: { self.wrappedValue }, set: { newValue in
            willSet((newValue, self.wrappedValue))
            self.wrappedValue = newValue
        })
    }
}

@available(iOS 13, *)
public extension Binding where Value == Bool {
    
    func toggleAction() -> () -> Void {
        return {
            self.wrappedValue.toggle()
        }
    }
}
