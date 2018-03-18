//
//  ViewController.swift
//  Clase_28_AVFoundation_Tarea_2
//
//  Created by Juan Garcia Montalvillo on 18/3/18.
//  Copyright © 2018 Juan Garcia Montalvillo. All rights reserved.
//

import UIKit
import AVFoundation


let listaCanciones = ["Lobotomy","Bonzo_Goes_To_Bitburg","Pinhead","Something_To_Believe","Remember_Rock_And_Roll_Radio","I_Wanna_Be_Sedated"]

var player:AVAudioPlayer?

//para el indice del array
var indexCancion:Int!

class ViewController: UIViewController {

    @IBAction func siguienteCancion(_ sender: Any) {
        
        //para correr el array
        if indexCancion == listaCanciones.count - 1 {
            indexCancion! = -1
            }
        indexCancion! += 1
        
        leerCanciones(numeroCancion: indexCancion) //recibe el parametro
        
        //print(indexCancion)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        indexCancion = 0 //para que empieze en el primero
        
        leerCanciones(numeroCancion: indexCancion)
        
    }
}

func leerCanciones(numeroCancion:Int){
    
    let url = NSURL(fileURLWithPath: Bundle.main.path(forResource: listaCanciones[numeroCancion], ofType: "mp3")!)
    
    do{
        
        player = try AVAudioPlayer(contentsOf: url as URL)
        player?.play()
    }catch{
        //print("Error"
    }
    
}





