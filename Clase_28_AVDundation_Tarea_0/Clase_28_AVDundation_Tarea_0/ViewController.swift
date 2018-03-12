//
//  ViewController.swift
//  Clase_28_AVDundation_Tarea_0
//
//  Created by Juan Garcia Montalvillo on 12/3/18.
//  Copyright © 2018 Juan Garcia Montalvillo. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation // Ya no es necesario

class ViewController: UIViewController {
   
    // Funcion sobreescrita de prepare
    override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        
        if segue.identifier == "Externo"{ // Nombre del identificador segue
            
            
            if let destination = segue.destination as? AVPlayerViewController{
                
                if let  url = URL(string: "https://content.jwplatform.com/manifests/vM7nH0Kl.m3u8" ) {
                    
                    destination.player = AVPlayer(url:url)
                }
            }
            
        }else { // si el identificador no es "Externo"
            
            // ruta del fichero local
            if let path = Bundle.main.path(forResource: "Train2", ofType: "mp4"){
                
                let video = AVPlayer(url:URL(fileURLWithPath: path))
                let videoplayer = AVPlayerViewController()
                
                videoplayer.player = video
                
                present(videoplayer,animated: true){
                    
                    video.play()
                }
                
            }
        }}}





