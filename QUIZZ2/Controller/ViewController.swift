//
//  ViewController.swift
//  QUIZZ2
//
//  Created by Ronald Murillo Solano on 8/6/18.
//  Copyright © 2018 Ronald Murillo Solano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btnSi: UIButton!
    
    @IBOutlet weak var btnNo: UIButton!
    @IBOutlet weak var lblContadorPreguntas: UILabel!
    
    @IBOutlet weak var lblPregunta: UILabel!
    
    
    @IBOutlet weak var lblCantidadErrores: UILabel!
    @IBOutlet weak var lblCantidadAciertos: UILabel!
    
    @IBOutlet weak var lblResultado: UILabel!
    
    
    var cantidadRespuestasCorrectas : Int = 0
    var cantidadRespuestasIncorrectas : Int = 0
    var respuestaSeleccionada : Bool = false
    let allQuestions = ListQuestionsModel()
    var numeroPregunta : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPregunta.text = allQuestions.list[numeroPregunta].pregunta
        lblContadorPreguntas.text = "1 de " + String(allQuestions.list.count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnRespuesta(_ sender: UIButton) {
        
        if(sender.tag==1){
            respuestaSeleccionada = true
        }
        else if (sender.tag==2){
            respuestaSeleccionada=false
        }
        revisarRespuesta()
    }
    
    
    func revisarRespuesta(){
        let respuestaCorrecta=allQuestions.list[numeroPregunta].respuesta
        
        if(respuestaCorrecta==respuestaSeleccionada){
            cantidadRespuestasCorrectas += 1
            let alerta = UIAlertController(title: "Título", message: "Respuesta Correcta!!!",preferredStyle: UIAlertControllerStyle.alert)
            let accion = UIAlertAction(title: "Cerrar", style: UIAlertActionStyle.default) { _ in alerta.dismiss(animated: true, completion: nil) }
            alerta.addAction(accion)
            self.present(alerta, animated: true, completion: nil)
        }
        else{
             cantidadRespuestasIncorrectas += 1
            let alerta = UIAlertController(title: "Título", message: "Respuesta Incorrecta!!!",preferredStyle: UIAlertControllerStyle.alert)
            let accion = UIAlertAction(title: "Cerrar", style: UIAlertActionStyle.default) { _ in alerta.dismiss(animated: true, completion: nil) }
            alerta.addAction(accion)
            self.present(alerta, animated: true, completion: nil)
        }
        numeroPregunta = numeroPregunta + 1
        lblCantidadErrores.text = String (cantidadRespuestasIncorrectas)
        lblCantidadAciertos.text = String (cantidadRespuestasCorrectas)
        if(numeroPregunta == 20) {
            lblResultado.text = String(cantidadRespuestasCorrectas * 100 / allQuestions.list.count)
            btnSi.isHidden = true
            btnNo.isHidden = true
            lblPregunta.isHidden = true
        }
        else{
            lblPregunta.text = allQuestions.list[numeroPregunta].pregunta
            lblContadorPreguntas.text = String(numeroPregunta + 1) + " de " + String(allQuestions.list.count)
        }
        
        
    }

    
    
    
}

