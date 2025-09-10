//
//  ContentView.swift
//  Paisajes
//
//  Created by Alumno 04 on 27/08/25.

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircularImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Switzerland")
                    .font(.title)
                    .padding()
                    .foregroundColor(.green)
                HStack {
                    Text("46.8182° N, 8.2275° E,")
                        .font(.subheadline)
                    Spacer()
                    Text("Bern")
                }
                Divider()
                Text("About Bern, Switzerland")
                Text("Beautiful and calm city, located in one of the first-world countries.")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
