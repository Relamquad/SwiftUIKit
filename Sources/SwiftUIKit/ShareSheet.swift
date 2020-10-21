//
//  File.swift
//  
//
//  Created by Konstantin Kalivod on 21.10.2020.
//

import SwiftUI

public struct ShareSheet: UIViewControllerRepresentable {
    public typealias Callback = (_ activityType: UIActivity.ActivityType?, _ completed: Bool, _ returnedItems: [Any]?, _ error: Error?) -> Void
    
    private var activityItems: [Any] = []
    private let applicationActivities: [UIActivity]?
    private let excludedActivityTypes: [UIActivity.ActivityType]?
    private let callback: Callback?
    
    public init(activityItems: [Any], applicationActivities: [UIActivity]? = nil, excludedActivityTypes: [UIActivity.ActivityType]? = nil, callback: Callback? = nil) {
    
        self.activityItems = activityItems
        self.applicationActivities = applicationActivities
        self.excludedActivityTypes = excludedActivityTypes
        self.callback = callback
    }
    
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
