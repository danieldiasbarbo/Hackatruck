//
//  IMCTela.swift
//  Aula01
//
//  Created by Student05 on 28/07/23.
//

import SwiftUI

struct IMCTela: View {
    @State var pesoStr = ""
    @State var alturaStr = ""
    @State var estado = ""
    @State var altura = 1.0
    @State var peso = 1.0
    @State var cor = Color("Normal")
    var body: some View {
        VStack{
            VStack{
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                
                Spacer()
                TextField("peso",text:$pesoStr)
                    .padding(10)
                    .multilineTextAlignment(.center)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                
                Spacer()
                TextField("altura",text: $alturaStr)
                    .padding(10)
                    .multilineTextAlignment(.center)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                Spacer()
                Button(action:{
                    altura = Double(alturaStr)!
                    peso = Double(pesoStr)!
                    let imc = peso/(altura*altura/10000)
                    switch imc{
                    case ...10.5:
                        estado = "Baixo peso"
                        cor = Color("BaixoPeso")
                    case 10.5...20.5:
                        estado = "Normal"
                        cor = Color("Normal")
                    case 20.5...29.99:
                        estado = "Sobrepeso"
                        cor = Color("Sobrepeso")
                    default:
                        estado = "Obesidade"
                        cor = Color("Obesidade")
                    }
                }){
                    Text("Calcular")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                Spacer()
                Text(estado)
                    .font(.largeTitle)
                Spacer()
            }
            Image("tabela-IMC")
                .resizable()
                .scaledToFit()
        }.background(cor)
    }
}

struct IMCTela_Previews: PreviewProvider {
    static var previews: some View {
        IMCTela()
    }
}
