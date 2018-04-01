//
//  ViewController.swift
//  JSON_Practica_2
//
//  Created by Juan Garcia Montalvillo on 1/4/18.
//  Copyright © 2018 Juan Garcia Montalvillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ver: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        if let url = Bundle.main.url(forResource: "Noticias", withExtension: "json"){
            
            
            
            if let jsonData:Data = try? Data(contentsOf:url){
                
                
                if let  jsonDict = try? JSONSerialization.jsonObject(with: jsonData, options: []) as? NSDictionary {
                    
                    for (key,value) in jsonDict! {
                        
                        print("\(key) \(value)")
                        
                        
                     
                        ver.text = ("\(key) \(value)")
                    }

   
}
            }}}}
