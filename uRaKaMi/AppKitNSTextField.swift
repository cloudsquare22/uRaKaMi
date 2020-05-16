//
//  AppKitNSTextField.swift
//  uRaKaMi
//
//  Created by Shin Inaba on 2020/05/16.
//  Copyright © 2020 shi-n. All rights reserved.
//

import AppKit
import SwiftUI

struct AppKitNSTextField: NSViewRepresentable {
    typealias NSViewType = NSTextField
    
    let width: CGFloat
    let height: CGFloat
    
    func makeNSView(context: Context) -> NSTextField {
        let view = NSTextField(frame: NSRect(x: 0, y: 0, width: width, height: height))
        return view
    }
    
    func updateNSView(_ nsView: NSTextField, context: Context) {
    }
    
}
