//
//  PaisajeRow.swift
//  Paisajes
//
//  Created by Alumno 04 on 10/09/25.
//

import SwiftUI

struct PaisajeRow: View {
    var paisaje: Paisaje
    
    var body: some View {
        HStack {
            Image(paisaje.getImageName())
                .resizable()
                .frame(width: 50, height: 50)
            Spacer()
            
            if paisaje.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
            
            Text(paisaje.name)
        }
    }
}



// struct PaisajeRow_Previews: PreviewProvider {
//     static var previews: some View {
//        PaisajeRow(paisaje: paisajes[0])
//     }
// }
