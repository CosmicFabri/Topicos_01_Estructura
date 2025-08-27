//
//  CircularImage.swift
//  Paisajes
//
//  Created by Alumno 04 on 27/08/25.
//

import SwiftUI

struct CircularImage: View {
    var body: some View {
        Image("Switzerland")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircularImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularImage()
    }
}
