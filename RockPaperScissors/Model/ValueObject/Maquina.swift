//
//  Maquina.swift
//  RockPaperScissors
//
//  Created by Ángel Saghir Rodríguez Fernández on 23/08/22.
//
import Foundation

public class maquina{
    func randomElement()->RPS {
        let rps = [RPS.Rock, RPS.Paper, RPS.Scissors]
        let randomRps = rps.randomElement()!
        return(randomRps)
    }
}
