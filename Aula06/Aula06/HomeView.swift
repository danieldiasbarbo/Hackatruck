//
//  HomeView.swift
//  Aula06
//
//  Created by Student05 on 31/07/23.
//

import SwiftUI

struct HomeView: View {
    @State var itens = [
        "Daniel",
        "Bonneti",
        "Davi",
        "Gabriel",
        "Carlos",
        "Daniel",
        "Bonneti",
        "Davi",
        "Gabriel",
        "Carlosa",
        "Daniel",
        "Bonneti",
        "Davi",
        "Gabriel",
        "Carlos",
        "Daniel",
        "Bonneti",
        "Davi",
        "Gabriel",
        "Carlos",
        "Daniel",
        "Bonneti",
        "Davi",
        "Gabriel",
        "Carlos",
        "Lorenzo"
    ]
    
    var body: some View {
        List(itens, id: \.self) { item in
            Text(item)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
