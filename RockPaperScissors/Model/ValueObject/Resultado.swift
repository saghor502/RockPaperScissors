//
//  Resultado.swift
//  RockPaperScissors
//
//  Created by Ángel Saghir Rodríguez Fernández on 23/08/22.
//

enum RPS{
    case Rock
    case Paper
    case Scissors
}

import Foundation

public class resultado{
    let desicionJ: RPS
    
    init(desicionJ : RPS){
        self.desicionJ = desicionJ
    }
    
    func darResultado(desicionJ : RPS)->String{
        let desicionM = maquina().randomElement()
        if(desicionM == RPS.Rock){
            if(self.desicionJ == RPS.Rock){
                return("D")
            }else if(self.desicionJ == RPS.Paper){
                return("J")
            }else{
                return("M")
            }
        }else if(desicionM == RPS.Paper){
            if(self.desicionJ == RPS.Rock){
                return("M")
            }else if(self.desicionJ == RPS.Paper){
                return("D")
            }else{
                return("J")
            }
        }else{
            if(self.desicionJ == RPS.Rock){
                return("J")
            }else if(self.desicionJ == RPS.Paper){
                return("M")
            }else{
                return("D")
            }
        }
    }
}
