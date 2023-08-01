//
//  Mid1View.swift
//  Desafio02
//
//  Created by Student05 on 31/07/23.
//

import SwiftUI

struct Mid1View: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Primeiro nível")
                NavigationLink {
                    Mid2View()
                } label: {
                    Text("Nível 2")
                }
            }
            .navigationTitle("nível 1")
        }
    }
}

struct Mid1View_Previews: PreviewProvider {
    static var previews: some View {
        Mid1View()
    }
}
