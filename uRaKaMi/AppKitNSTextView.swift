//
//  AppKitNSTextView.swift
//  uRaKaMi
//
//  Created by Shin Inaba on 2020/05/15.
//  Copyright © 2020 shi-n. All rights reserved.
//

import AppKit
import SwiftUI

struct AppKitNSTextView: NSViewRepresentable {
    typealias NSViewType = NSTextView
    
    @Binding var string: String

    let width: CGFloat
    let height: CGFloat
    
    func makeNSView(context: Context) -> NSTextView {
        let view = NSTextView(frame: NSRect(x: 0, y: 0, width: width, height: height))
        view.delegate = context.coordinator
        return view
    }
    
    func updateNSView(_ nsView: NSTextView, context: Context) {
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(appKitNSTextView: self)
    }
}

extension AppKitNSTextView {
    class Coordinator: NSObject, NSTextViewDelegate {
        var parent: AppKitNSTextView
        
        init(appKitNSTextView: AppKitNSTextView) {
            self.parent = appKitNSTextView
        }
        
        func textView(_ textView: NSTextView, shouldChangeTextIn affectedCharRange: NSRange, replacementString: String?) -> Bool {
            return true
        }
        
        
        func textDidChange(_ notification: Notification) {
            guard let textView = notification.object as? NSTextView else {
                return
            }
            self.parent.string = textView.string
        }
    }
}
