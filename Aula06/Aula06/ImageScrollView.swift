//
//  ImageScrollView.swift
//  Aula06
//
//  Created by Student05 on 31/07/23.
//

import SwiftUI

struct ImageScrollView: View {
    @State var nome = [
        "a",
        "b",
        "c",
        "d",
        "e",
        "f"
    ]
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(nome, id: \.self) { n in
                    Image(systemName: "\(n).circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                }
            }
        }
    }
}

struct ImageScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ImageScrollView()
    }
}
