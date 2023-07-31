//
//  ContentView.swift
//  Aula06
//
//  Created by Student05 on 31/07/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Menu",
                          systemImage: "list.dash")
                }
            PhotoView()
                .tabItem{
                    Label("Foto", systemImage: "archivebox")
                }
            ImageScrollView()
                .tabItem{
                    Label("Scroll", systemImage: "tray.and.arrow.up")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
