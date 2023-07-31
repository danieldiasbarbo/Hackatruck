//
//  ContentView.swift
//  Aula06
//
//  Created by Student05 on 31/07/23.
//

import SwiftUI

struct cc: View {
    var body: some View{
        VStack{
            Text("Meu pau no rabo")
        }
    }
}

struct ContentView: View {
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
        ContentView()
    }
}
