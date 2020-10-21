//
//  File.swift
//  
//
//  Created by Konstantin Kalivod on 21.10.2020.
//

import SwiftUI

public struct ShareSheet: UIViewControllerRepresentable {
    public typealias Callback = (_ activityType: UIActivity.ActivityType?, _ completed: Bool, _ returnedItems: [Any]?, _ error: Error?) -> Void
      
    public let activityItems: [Any]
    public let applicationActivities: [UIActivity]? = nil
    public let excludedActivityTypes: [UIActivity.ActivityType]? = nil
    public let callback: Callback? = nil
      
    public func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(
            activityItems: activityItems,
            applicationActivities: applicationActivities)
        controller.excludedActivityTypes = excludedActivityTypes
        controller.completionWithItemsHandler = callback
        return controller
    }
      
    public func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // nothing to do here
    }
}
