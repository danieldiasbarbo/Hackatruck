//
//  D2Tela.swift
//  Aula01
//
//  Created by Student05 on 27/07/23.
//

import SwiftUI

struct D2Tela: View {
    var body: some View {
        VStack{
            Image("caminhao")
                .resizable()
                .scaledToFit()
            
            ZStack{
                Image("caminhao")
                    .resizable()
                    .clipShape(Circle())
                Text("Hackatruck")
                    .font(.title)
                    .foregroundColor(.blue)
                    .bold()
                    .padding(.bottom, 100)
            }
            
            ZStack{
                Rectangle()
                    .padding(.horizontal, 50)
                HStack{
                    Text("Maker")
                        .font(.title)
                        .foregroundColor(.yellow)
                    Text("Space")
                        .font(.title)
                        .foregroundColor(.red)
                }
            }
        }
    }
}

struct D2Tela_Previews: PreviewProvider {
    static var previews: some View {
        D2Tela()
    }
}
