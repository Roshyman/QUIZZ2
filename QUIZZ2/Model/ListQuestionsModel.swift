//
//  ListQuestionsModel.swift
//  QUIZZ2
//
//  Created by Ronald Murillo Solano on 8/6/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//

import Foundation

class ListQuestionsModel{
    
    var list = [QuestionModel]()
    
    init() {
        list.append(QuestionModel(text: "El mundial de futbol en es junio?", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Keylor Navas es Portero?", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Macho Ramirez jugó en la liga?", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Rolando Fonseca es el mayor goleador de la selección?", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Alonso Solís jugó en la selección nacional?", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Medford jugó en europa?", respuestaCorrecta: false))
        list.append(QuestionModel(text: "Saprissa tiene 33 campeonatos nacionales?", respuestaCorrecta: false))
        list.append(QuestionModel(text: "Larrea es Uruguayo?", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Hoy es lunes?", respuestaCorrecta: false))
        list.append(QuestionModel(text: "Estamos en el año 2017", respuestaCorrecta: false))
        list.append(QuestionModel(text: "El angel del madrid se llamaba Fernando Hierro?", respuestaCorrecta: false))
        list.append(QuestionModel(text: "Messi jugó en la liga argentina?", respuestaCorrecta: false))
        list.append(QuestionModel(text: "CR ha ido a 7 mundiales?", respuestaCorrecta: false))
        list.append(QuestionModel(text: "El campeón del mundo actualmente es Brazil?", respuestaCorrecta: false))
        list.append(QuestionModel(text: "Alemania clasifica directo al mundial 2018?", respuestaCorrecta: true))
        list.append(QuestionModel(text: "Estamos en junio?", respuestaCorrecta: false))
        list.append(QuestionModel(text: "Pelé era español?", respuestaCorrecta: false))
        list.append(QuestionModel(text: "Panamá va a su segundo mundial de futbol?", respuestaCorrecta: false))
        list.append(QuestionModel(text: "CR le ha empatado a Brazil en algún mundial?", respuestaCorrecta: false))
        list.append(QuestionModel(text: "El mundial es es Europa?", respuestaCorrecta: true))
    }
    
    
    
}

