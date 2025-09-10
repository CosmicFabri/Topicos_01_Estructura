//
//  PaisajesList.swift
//  Paisajes
//
//  Created by Alumno 04 on 10/09/25.
//

import SwiftUI

struct PaisajesList: View {
    var body: some View {
        NavigationSplitView {
            List (paisajes) { paisaje in
                NavigationLink {
                    PaisajeDetail(paisaje: paisaje)
                } label: {
                    PaisajeRow(paisaje: paisaje)
                }
            }
            .navigationTitle("Cool places")
        } detail: {
            Text("Selecciona un lugar")
        }
    }
}

struct PaisajesList_Previews: PreviewProvider {
    static var previews: some View {
        PaisajesList()
    }
}
