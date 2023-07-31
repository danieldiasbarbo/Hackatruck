//
//  D3Tela.swift
//  Aula01
//
//  Created by Student05 on 27/07/23.
//

import SwiftUI


struct D3Tela: View {
    @State var nome = ""
    @State var alerta = false
    var body: some View {
        VStack{
            Text("Bem vindo, " + nome)
                .font(.title)
            TextField("seu nome", text: $nome)
                .multilineTextAlignment(.center)
            Spacer()
            ZStack{
                Image("caminhao")
                    .resizable()
                    .scaledToFit()
                    .brightness(0.5)
                    .blur(radius: 3)
                Spacer()
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                    Image("truck")
                        .resizable()
                        .scaledToFit()
                }.padding(100)
            }
            Spacer()
            Button("Entrar") {
                alerta = true
            }
            .alert(isPresented: $alerta) {
                Alert(title: Text("Alerta!"),
                      message: Text("Voce ira comecar o desafio da aula agora"),
                      dismissButton: .default(Text("Vamos la!")))
            }
        }
    }
}

struct D3Tela_Previews: PreviewProvider {
    static var previews: some View {
        D3Tela()
    }
}
