//
//  posicao.swift
//  Mapa
//
//  Created by Student05 on 03/08/23.
//

import Foundation
import MapKit

struct Localizacao: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flagURL: String
    let description: String
}
