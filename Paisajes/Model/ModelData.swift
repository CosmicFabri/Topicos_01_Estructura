//
//  ModelData.swift
//  Paisajes
//
//  Created by Alumno 04 on 10/09/25.
//

import Foundation

import Foundation

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("No encontré el archivo \(filename) en los recursos de la app.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("No pude abrir el archivo \(filename) de los recursos de la app")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("No pude leer \(filename) como \(T.self):\n\(error)")
    }
}

var paisajes: [Paisaje] = load("landmarkData.json")
