//
//  ContentView.swift
//  uRaKaMi
//
//  Created by Shin Inaba on 2020/05/15.
//  Copyright © 2020 shi-n. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var urakami = ""
    
    let appDelegate: AppDelegate = NSApplication.shared.delegate as! AppDelegate
    
    var body: some View {
        AppKitNSTextView(string: $urakami,
                         width: appDelegate.window.frame.width,
                         height: appDelegate.window.frame.height)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
