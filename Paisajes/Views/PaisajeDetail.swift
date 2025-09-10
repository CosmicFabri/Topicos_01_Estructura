//
//  PaisajeDetail.swift
//  Paisajes
//
//  Created by Alumno 04 on 10/09/25.
//

import SwiftUI

struct PaisajeDetail: View {
    var paisaje: Paisaje
    
    var body: some View {
        VStack {
            MapView(coordinate: paisaje.locationCoordinate)
                .frame(height: 300)
            CircularImage(image: paisaje.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(paisaje.name)
                    .font(.title)
                    .padding()
                    .foregroundColor(.green)
                HStack {
                    Text(paisaje.location)
                        .font(.subheadline)
                    Spacer()
                    Text(paisaje.state)
                }
                Divider()
                Text("About \(paisaje.name)")
                Text(paisaje.description)
            }
            .padding()
            Spacer()
        }
    }
}

struct PaisajeDetail_Previews: PreviewProvider {
    static var previews: some View {
        PaisajeDetail(paisaje: paisajes[0])
    }
}
