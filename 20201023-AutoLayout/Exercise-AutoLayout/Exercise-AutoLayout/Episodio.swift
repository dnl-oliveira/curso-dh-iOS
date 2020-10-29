//
//  Episodio.swift
//  Exercise-AutoLayout
//
//  Created by Daniel Oliveira on 10/23/20.
//

import Foundation

class Episodio {
    var titulo: String
    var avaliacao: String
    var estrelas: String
    var imageEpisodio: String
    var sinapse: String
    
    init(titulo: String, avaliacao: String, estrelas: String, imageEpisodio: String, sinapse: String){
        self.titulo = titulo
        self.avaliacao = avaliacao
        self.estrelas = estrelas
        self.imageEpisodio = imageEpisodio
        self.sinapse = sinapse
    }
}
