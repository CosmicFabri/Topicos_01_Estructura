//
//  PaisajesList.swift
//  Paisajes
//
//  Created by Alumno 04 on 10/09/25.
//

import SwiftUI

struct PaisajesList: View {
    var body: some View {
        List (paisajes, id: \.id) { paisaje in
            PaisajeRow(paisaje: paisaje)
        }
    }
}

struct PaisajesList_Previews: PreviewProvider {
    static var previews: some View {
        PaisajesList()
    }
}
