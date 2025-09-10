//
//  CircularImage.swift
//  Paisajes
//
//  Created by Alumno 04 on 27/08/25.
//

import SwiftUI

struct CircularImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            .frame(width: 0.1, height: 0.1)
    }
}

 struct CircularImage_Previews: PreviewProvider {
    static var previews: some View {
        CircularImage(image: Image("fdi"))
    }
}
