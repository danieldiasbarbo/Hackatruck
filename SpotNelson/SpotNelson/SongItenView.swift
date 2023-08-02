//
//  SongItenView.swift
//  SpotNelson
//
//  Created by Student05 on 01/08/23.
//

import SwiftUI

struct SongItenView: View {
    var musica = Song(id: 1, name: "Name of music", artist: "artist", cover: "https://mosaic.scdn.co/640/ab67616d00001e0220d57bc5fd5bbe506cabc22cab67616d00001e023982e253126c959ab9677bcbab67616d00001e029b6bfd2b42a363f11dcf1b7cab67616d00001e02adeae8c2b1b4087463e071e3")
    
    let size = 50.0
    var body: some View {
        HStack{
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
            VStack(alignment: .leading){
                Text(musica.name)
                    .font(.title2)
                    .foregroundColor(.white)
                Spacer()
                Text(musica.artist)
                    .font(.footnote)
                    .foregroundColor(.white)
            }
            Spacer()
            Image(systemName: "ellipsis").foregroundColor(.white)
        }.frame(maxHeight: size).padding(5)
    }
    
    init() {
    }
    
    init(musica: Song) {
        self.musica = musica
    }
}

struct SongItenView_Previews: PreviewProvider {
    static var previews: some View {
        SongItenView()
    }
}
