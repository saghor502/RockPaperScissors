//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Ángel Saghir Rodríguez Fernández on 18/08/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MaquinaScore: UILabel!
    @IBOutlet weak var JugadorScore: UILabel!
    @IBOutlet weak var jugadorEscogio: UILabel!
    @IBOutlet weak var maquinaEscogio: UILabel!
    @IBOutlet weak var Ganador: UILabel!
    var puntajeJ = 0
    var puntajeM = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Rock(_ sender: UIButton) {
        if(puntajeJ == 9){
            puntajeJ = 0
            puntajeM = 0
            MaquinaScore.text = "\(puntajeM)"
            JugadorScore.text = "\(puntajeJ)"
        }else if (puntajeM == 9){
            puntajeJ = 0
            puntajeM = 0
            MaquinaScore.text = "\(puntajeM)"
            JugadorScore.text = "\(puntajeJ)"
        }
        
        let resul = resultado.init(desicionJ: RPS.Rock)
        let res = resul.darResultado(desicionJ: RPS.Rock)
        if( res == "M"){
            puntajeM = puntajeM + 1
            MaquinaScore.text = "\(puntajeM)"
            jugadorEscogio.text = "R"
            maquinaEscogio.text = "P"
            Ganador.text = "Maquina"
        }else if(res == "J"){
            puntajeJ = puntajeJ + 1
            JugadorScore.text = "\(puntajeJ)"
            jugadorEscogio.text = "R"
            maquinaEscogio.text = "S"
            Ganador.text = "Jugador"
        }else{
            jugadorEscogio.text = "R"
            maquinaEscogio.text = "R"
            Ganador.text = "Empate"
        }
    }
    @IBAction func Paper(_ sender: UIButton) {
        if(puntajeJ == 9){
            puntajeJ = 0
            puntajeM = 0
            MaquinaScore.text = "\(puntajeM)"
            JugadorScore.text = "\(puntajeJ)"
        }else if (puntajeM == 9){
            puntajeJ = 0
            puntajeM = 0
            MaquinaScore.text = "\(puntajeM)"
            JugadorScore.text = "\(puntajeJ)"
        }
        
        let resul = resultado.init(desicionJ: RPS.Paper)
        let res = resul.darResultado(desicionJ: RPS.Paper)
        if( res == "M"){
            puntajeM = puntajeM + 1
            MaquinaScore.text = "\(puntajeM)"
            jugadorEscogio.text = "P"
            maquinaEscogio.text = "S"
            Ganador.text = "Maquina"
        }else if(res == "J"){
            puntajeJ = puntajeJ + 1
            JugadorScore.text = "\(puntajeJ)"
            jugadorEscogio.text = "P"
            maquinaEscogio.text = "R"
            Ganador.text = "Jugador"
        }else{
            jugadorEscogio.text = "P"
            maquinaEscogio.text = "P"
            Ganador.text = "Empate"
        }
    }
    @IBAction func Scissors(_ sender: UIButton) {
        if(puntajeJ == 9){
            puntajeJ = 0
            puntajeM = 0
            MaquinaScore.text = "\(puntajeM)"
            JugadorScore.text = "\(puntajeJ)"
        }else if (puntajeM == 9){
            puntajeJ = 0
            puntajeM = 0
            MaquinaScore.text = "\(puntajeM)"
            JugadorScore.text = "\(puntajeJ)"
        }
        
        let resul = resultado.init(desicionJ: RPS.Scissors)
        let res = resul.darResultado(desicionJ: RPS.Scissors)
        if( res == "M"){
            puntajeM = puntajeM + 1
            MaquinaScore.text = "\(puntajeM)"
            jugadorEscogio.text = "S"
            maquinaEscogio.text = "R"
            Ganador.text = "Maquina"
        }else if(res == "J"){
            puntajeJ = puntajeJ + 1
            JugadorScore.text = "\(puntajeJ)"
            jugadorEscogio.text = "S"
            maquinaEscogio.text = "P"
            Ganador.text = "Jugador"
        }else{
            jugadorEscogio.text = "S"
            maquinaEscogio.text = "S"
            Ganador.text = "Empate"
        }
    }
    
}
