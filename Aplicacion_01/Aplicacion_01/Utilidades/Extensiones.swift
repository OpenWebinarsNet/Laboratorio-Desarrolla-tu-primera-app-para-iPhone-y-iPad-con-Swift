//
//  Extensiones.swift
//  Aplicacion_01
//
//  Created by academia moviles on 19/02/22.
//

import Foundation
import UIKit

extension UIButton{
    func redondeandoBtn(){
        self.layer.cornerRadius = 6
        self.layer.masksToBounds = true
    }
}
