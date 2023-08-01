//
//  ContentView.swift
//  Desafio02
//
//  Created by Student05 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    @State var showSheet = false
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    TextoEmailView()
                } label: {
                    Text("Nome e email")
                }
                
                NavigationLink {
                    Mid1View()
                } label: {
                    Text("Pilha do meio")
                }
                
                Button("Sheet View") {
                    showSheet.toggle()
                }
                .sheet(isPresented: $showSheet) {
                    PopupView()
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
