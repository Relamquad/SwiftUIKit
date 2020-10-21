//
//  File.swift
//  
//
//  Created by Konstantin Kalivod on 21.10.2020.
//

import SafariServices
import SwiftUI

public struct SafariViewController: UIViewControllerRepresentable {
    public typealias UIViewControllerType = SFSafariViewController
    
    let url: URL
    public init(url: URL) {
        self.url = url
    }
    
    public func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    public func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
    }
}
