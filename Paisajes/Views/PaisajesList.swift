//
//  PaisajesList.swift
//  Paisajes
//
//  Created by Alumno 04 on 10/09/25.
//

import SwiftUI

struct PaisajesList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredPaisajes: [Paisaje] {
        modelData.paisajes.filter { paisaje in
            (!showFavoritesOnly || paisaje.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle (isOn: $showFavoritesOnly) {
                    Text("Sólo favoritos")
                }
                
                ForEach(filteredPaisajes) { paisaje in
                    NavigationLink {
                        PaisajeDetail(paisaje: paisaje)
                    } label: {
                        PaisajeRow(paisaje: paisaje)
                    }
                }
            }
            .navigationTitle("Paisajes")
            .animation(.default, value: filteredPaisajes)
        } detail: {
            Text("Selecciona un lugar")
        }
    }
}

struct PaisajesList_Previews: PreviewProvider {
    static var previews: some View {
        PaisajesList().environmentObject(ModelData())
    }
}
