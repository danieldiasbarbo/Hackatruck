//
//  SongMainView.swift
//  SpotNelson
//
//  Created by Student05 on 01/08/23.
//

import SwiftUI

struct SongMainView: View {
    let size = 300.0
    var musica = Song(id: 1, name: "Name of music", artist: "artist", cover: "https://mosaic.scdn.co/640/ab67616d00001e0220d57bc5fd5bbe506cabc22cab67616d00001e023982e253126c959ab9677bcbab67616d00001e029b6bfd2b42a363f11dcf1b7cab67616d00001e02adeae8c2b1b4087463e071e3")
    var body: some View {
        VStack{
            Spacer()
            AsyncImage(
                url: URL(string: musica.cover),
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: size, maxHeight: size)
                },
                placeholder: {
                    ProgressView()
                }
            ).padding(5)
            Text(musica.name).font(.title).foregroundColor(.white)
            Text(musica.artist).font(.caption).foregroundColor(.white)
            Spacer()
            HStack{
                Image(systemName: "shuffle").resizable().scaledToFit().padding(10)
                Spacer()
                Image(systemName: "backward.end.fill").resizable().scaledToFit().padding(10)

                Spacer()
                Image(systemName: "play.fill").resizable().scaledToFit().padding(10)

                Spacer()
                Image(systemName: "forward.end.fill").resizable().scaledToFit().padding(10)

                Spacer()
                Image(systemName: "repeat").resizable().scaledToFit().padding(10)
            }.foregroundColor(.white).frame(maxHeight: 100)
            Spacer()
        }
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [.green, .black]), startPoint: .top, endPoint: .bottom)
        )
    }
    
    init() {
    }
    
    init(musica: Song) {
        self.musica = musica
    }
}

struct SongMainView_Previews: PreviewProvider {
    static var previews: some View {
        SongMainView()
    }
}
