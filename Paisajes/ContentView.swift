//
//  ContentView.swift
//  Paisajes
//
//  Created by Alumno 04 on 27/08/25.

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Suiza")
                .font(.title)
                .padding()
                .foregroundColor(.green)
            HStack {
                Text("46.8182° N, 8.2275° E,")
                    .font(.subheadline)
                Text("Bern")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
