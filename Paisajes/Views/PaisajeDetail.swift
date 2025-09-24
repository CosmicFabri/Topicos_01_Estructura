//
//  PaisajeDetail.swift
//  Paisajes
//
//  Created by Alumno 04 on 10/09/25.
//

import SwiftUI

struct PaisajeDetail: View {
    @EnvironmentObject var modelData: ModelData
    var paisaje: Paisaje
    
    var paisajeIndex: Int {
        modelData.paisajes.firstIndex(where: {$0.id == paisaje.id})!
    }
    
    var body: some View {
        VStack {
            // MapView crashes the preview
            Spacer()
            CircularImage(image: paisaje.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(paisaje.name)
                        .font(.title)
                        .padding()
                        .foregroundColor(.green)
                    FavoriteButton(isSet: $modelData.paisajes[paisajeIndex].isFavorite)
                }
                HStack {
                    Text(paisaje.location)
                        .font(.subheadline)
                    Spacer()
                    Text(paisaje.state)
                }
                Divider()
                Text("About")
                Text(paisaje.description)
            }
            .padding()
            Spacer()
        }
    }
}

struct PaisajeDetail_Previews: PreviewProvider {
    static var previews: some View {
        let modelData = ModelData()
        
        return PaisajeDetail(paisaje: ModelData().paisajes[0])
            .environmentObject(modelData)
    }
}
