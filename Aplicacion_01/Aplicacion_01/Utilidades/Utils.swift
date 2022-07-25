//
//  Utils.swift
//  Aplicacion_01
//
//  Created by academia moviles on 19/02/22.
//

import Foundation
import UIKit

class Utils{
    
   class func redondeandoBtns(btn:UIButton){
        btn.layer.cornerRadius = 15.0
        btn.layer.masksToBounds = true
    }
   class func cambiandoTituloSC(segmentControl:UISegmentedControl,color:UIColor){
        let titleTextAttrib = [NSAttributedString.Key.foregroundColor:color]
        segmentControl.setTitleTextAttributes(titleTextAttrib, for: .selected)
    }
    
   
    
    
}
