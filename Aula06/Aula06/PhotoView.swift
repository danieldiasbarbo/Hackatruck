//
//  PhotoView.swift
//  Aula06
//
//  Created by Student05 on 31/07/23.
//

import SwiftUI

struct PhotoView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 300, height: 300)
                .foregroundColor(.blue)
            Text("Hello, Hackatruck")
        }
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
