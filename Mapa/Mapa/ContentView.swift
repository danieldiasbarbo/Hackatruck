//
//  ContentView.swift
//  Mapa
//
//  Created by Student05 on 03/08/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State var locais = [
        Localizacao(
        name: "Brasil",
        coordinate: CLLocationCoordinate2D(
            latitude: -14.4095261,
            longitude: -51.31668),
        flagURL: "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg",
        description: "É um país muito bacana")
        ]
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: -14.4095261,
            longitude: -51.31668), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    )
    var body: some View {
        VStack {
            Text("Texto")
            Map(coordinateRegion: $region).frame(width: 400, height: 300)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
