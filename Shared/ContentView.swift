//
//  ContentView.swift
//  Shared
//
//  Created by Zach Plata on 2/24/22.
//

import SwiftUI

struct ContentView: View {
    @State var play: Bool = false
    
    let resource: String
    var action: (() -> Void)? = nil
    
    var body: some View {
        ContentViewBridge(resource: resource, fit: .fitCover, play: $play)
            .frame(width: 500, height: 500)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .onTapGesture {
                play = true
                action?()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(resource: "birb")
    }
}

