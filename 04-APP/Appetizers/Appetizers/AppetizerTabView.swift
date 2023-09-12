//
//  ContentView.swift
//  Appetizers
//
//  Created by Lucas Inocencio on 12/09/23.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
