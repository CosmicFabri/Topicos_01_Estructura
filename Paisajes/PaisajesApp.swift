//
//  PaisajesApp.swift
//  Paisajes
//
//  Created by Alumno 04 on 27/08/25.
//

import SwiftUI

@main
struct PaisajesApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
