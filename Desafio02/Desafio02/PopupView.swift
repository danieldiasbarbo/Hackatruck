//
//  PopupView.swift
//  Desafio02
//
//  Created by Student05 on 31/07/23.
//

import SwiftUI

struct PopupView: View {
    var body: some View {
        VStack{
            Divider()
            Spacer()
            Text("Um PopUp")
            Spacer()
        }.background(Color.gray)
    }
}

struct PopupView_Previews: PreviewProvider {
    static var previews: some View {
        PopupView()
    }
}
