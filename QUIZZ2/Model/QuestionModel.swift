//
//  QuestionModel.swift
//  QUIZZ2
//
//  Created by Ronald Murillo Solano on 8/6/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//
import Foundation

class QuestionModel {
    let pregunta : String
    let respuesta : Bool
    
    //init es el constructor
    init(text: String , respuestaCorrecta: Bool) {
        pregunta = text
        respuesta = respuestaCorrecta
    }
}

