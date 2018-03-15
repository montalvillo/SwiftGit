//
//  ViewController.swift
//  Clase_28_AVFoundation_Practica_2
//
//  Created by Juan Garcia Montalvillo on 12/3/18.
//  Copyright © 2018 Juan Garcia Montalvillo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    
    @IBOutlet weak var volumenControl: UISlider!
    var audioPlayer: AVAudioPlayer?
    
    
    @IBAction func playAudio(_ sender: Any) {
        
        if let player = audioPlayer{
            player.play()
        }
        }
    
    @IBAction func stopAudio(_ sender: Any) {
        
        if let player = audioPlayer{
            
            player.stop()
        }
    }
    
    @IBAction func adjustVolumen(_ sender: Any) {
        if audioPlayer != nil {
            
            audioPlayer?.volume = volumenControl.value
            
}
        
}
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let url = NSURL.fileURL(
            withPath: Bundle.main.path(forResource: "Believe",
                                       ofType: "mp3")!)
        
        
        var error: NSError?
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
        } catch let error1 as NSError {
            error = error1
            audioPlayer = nil
        }
        
        if let err = error {
            print("audioPlayer error \(err.localizedDescription)")
        } else {
            audioPlayer?.delegate = self
            audioPlayer?.prepareToPlay()
        }
    }
        
       
        }
        

        


   




