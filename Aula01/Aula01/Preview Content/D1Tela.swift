//
//  D1Tela.swift
//  Aula01
//
//  Created by Student05 on 27/07/23.
//

import SwiftUI

struct D1Tela: View {
    var body: some View {
        
        VStack{
            Image("caminhao")
                .resizable()
                .scaledToFit()
            Text("HackaTruck")
                .font(.title)
                .foregroundColor(.blue)
                .bold()
            HStack{
                Text("Maker")
                    .foregroundColor(.yellow)
                Text("Space")
                    .foregroundColor(.red)
            }
        }
    }
}

struct D1Tela_Previews: PreviewProvider {
    static var previews: some View {
        D1Tela()
    }
}
