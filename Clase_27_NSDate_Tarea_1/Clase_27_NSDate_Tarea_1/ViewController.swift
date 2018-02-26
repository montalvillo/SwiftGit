//
//  ViewController.swift
//  Clase_27_NSDate_Tarea_1
//
//  Created by Juan Garcia Montalvillo on 26/2/18.
//  Copyright © 2018 Juan Garcia Montalvillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var fechaHora: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBAction func comprobar(_ sender: UIButton) {
        
        
        let fechaSeleccionada = datePicker.date
        
        let calendar = Calendar.current
        
        let dia = calendar.component(.day, from: fechaSeleccionada)
        let mes = calendar.component(.month, from: fechaSeleccionada)
        let año = calendar.component(.year, from: fechaSeleccionada)
        let hora = calendar.component(.hour, from: fechaSeleccionada)
        let minuto = calendar.component(.minute, from: fechaSeleccionada)
        
        
        fechaHora.text = ("Dia: \(dia) Mes: \(mes) Año: \(año) Hora: \(hora) Minuto: \(minuto)")
    }
}

