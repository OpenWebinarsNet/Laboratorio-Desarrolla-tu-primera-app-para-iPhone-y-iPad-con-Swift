//
//  ViewController.swift
//  Aplicacion_01
//
//  Created by academia moviles on 13/02/22.
//

import UIKit


let TVALET:Float = 0.05 //5% PROPINA
let TLIMPIEZA:Float = 0.035
let TCONSERVE:Float = 0.065

class ViewController: UIViewController {
    
    @IBOutlet weak var montoTotalLbl: UILabel!
    @IBOutlet weak var selectorDeServicioSC: UISegmentedControl!
    @IBOutlet weak var montoTipLbl: UILabel!
    @IBOutlet weak var calculoBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        Utils.redondeandoBtns(btn: calculoBtn)
        //modificar los UIs via programatico
        calculoBtn.redondeandoBtn()
        Utils.cambiandoTituloSC(segmentControl: selectorDeServicioSC, color: UIColor.white)
        //calculo de monto total
        montoTotalLbl.text = setValorInicialConsumo()
        //calculo de tip
        seleccionandoServicios(self)
    }
    func setValorInicialConsumo()->String{
      let totalConsumo = Int.random(in: 100..<1000)
       return "\(totalConsumo)"
    }
    @IBAction func seleccionandoServicios(_ sender: Any) {
        //METODO DEL SEGMENT CONTROL
        guard  let montoTotal = montoTotalLbl.text else {return}
        let montoTotalFloat = Float(montoTotal)
        var tip:Float = 0
        if selectorDeServicioSC.selectedSegmentIndex == 0 {
           
            tip = montoTotalFloat! * TVALET
           
        }
        if selectorDeServicioSC.selectedSegmentIndex == 1 {
            
            tip = montoTotalFloat! * TLIMPIEZA
          
        }
        if selectorDeServicioSC.selectedSegmentIndex == 2 {
            
            tip = montoTotalFloat! * TCONSERVE
          
        }
        montoTipLbl.text = "€" + String(format: "%.02f", tip)
        guard    let montoTip = montoTipLbl.text else {return}
        calculoBtn.subtitleLabel?.text = montoTip
        
    }
    @IBAction func procesandoCalculo(_ sender: Any) {
        
    }
    
    @IBAction func reiniciandoValores(_ sender: Any) {
        
        montoTotalLbl.text = setValorInicialConsumo()
        seleccionandoServicios(sender)
    }
   
    
}
