//
//  ContentView.swift
//  SpotNelson
//
//  Created by Student05 on 01/08/23.
//

import SwiftUI

struct ContentView: View {
    var musicas = [
        Song(id: 1, name: "Pelados em Santos", artist: "Mamonas Assasinas", cover: "https://mosaic.scdn.co/640/ab67616d00001e0220d57bc5fd5bbe506cabc22cab67616d00001e023982e253126c959ab9677bcbab67616d00001e029b6bfd2b42a363f11dcf1b7cab67616d00001e02adeae8c2b1b4087463e071e3"),
        Song(id: 2, name: "Staway to Heaven", artist: "Led Zeppeling", cover: "https://cdns-images.dzcdn.net/images/cover/9e663c64680899afd85f72af607d549e/264x264.jpg"),
        Song(id: 3, name: "Pelados em Santos", artist: "Mamonas Assasinas", cover: "https://mosaic.scdn.co/640/ab67616d00001e0220d57bc5fd5bbe506cabc22cab67616d00001e023982e253126c959ab9677bcbab67616d00001e029b6bfd2b42a363f11dcf1b7cab67616d00001e02adeae8c2b1b4087463e071e3"),
        Song(id: 4, name: "Staway to Heaven", artist: "Led Zeppeling", cover: "https://cdns-images.dzcdn.net/images/cover/9e663c64680899afd85f72af607d549e/264x264.jpg"),
        Song(id: 5, name: "Pelados em Santos", artist: "Mamonas Assasinas", cover: "https://mosaic.scdn.co/640/ab67616d00001e0220d57bc5fd5bbe506cabc22cab67616d00001e023982e253126c959ab9677bcbab67616d00001e029b6bfd2b42a363f11dcf1b7cab67616d00001e02adeae8c2b1b4087463e071e3"),
        Song(id: 6, name: "Staway to Heaven", artist: "Led Zeppeling", cover: "https://cdns-images.dzcdn.net/images/cover/9e663c64680899afd85f72af607d549e/264x264.jpg"),
        Song(id: 7, name: "Pelados em Santos", artist: "Mamonas Assasinas", cover: "https://mosaic.scdn.co/640/ab67616d00001e0220d57bc5fd5bbe506cabc22cab67616d00001e023982e253126c959ab9677bcbab67616d00001e029b6bfd2b42a363f11dcf1b7cab67616d00001e02adeae8c2b1b4087463e071e3"),
        Song(id: 8, name: "Staway to Heaven", artist: "Led Zeppeling", cover: "https://cdns-images.dzcdn.net/images/cover/9e663c64680899afd85f72af607d549e/264x264.jpg"),
        Song(id: 9, name: "Pelados em Santos", artist: "Mamonas Assasinas", cover: "https://mosaic.scdn.co/640/ab67616d00001e0220d57bc5fd5bbe506cabc22cab67616d00001e023982e253126c959ab9677bcbab67616d00001e029b6bfd2b42a363f11dcf1b7cab67616d00001e02adeae8c2b1b4087463e071e3"),
        Song(id: 10, name: "Staway to Heaven", artist: "Led Zeppeling", cover: "https://cdns-images.dzcdn.net/images/cover/9e663c64680899afd85f72af607d549e/264x264.jpg"),
    ]
    
    var body: some View {
        NavigationView{
            VStack (spacing: 20){
                ScrollView{
                    Image("caminhao")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        .clipped()
                    HStack{
                        Text("Playlist, a Braba")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(10)
                        Spacer()
                    }
                    ForEach(musicas) { musica in
                        NavigationLink(destination: SongMainView(musica: musica)){
                            SongItenView(musica: musica)
                        }
                    }
                    Text("Sugeridos").font(.title).foregroundColor(.white)
                    ScrollView(.horizontal){
                        HStack(spacing: 20) {
                            ForEach(0..<10) {
                                Text("Item \($0)")
                                    .foregroundStyle(.white)
                                    .font(.largeTitle)
                                    .frame(width: 150, height: 150)
                                    .background(.red)
                            }
                        }
                    }
                }
            }
            .padding()
            .background(
                LinearGradient(gradient: Gradient(colors: [.green, .black]), startPoint: .top, endPoint: .bottom)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
