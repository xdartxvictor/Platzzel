//
//  ViewController.swift
//  demo
//
//  Created by Victor Aliaga on 12/5/17.
//  Copyright © 2017 Victor Aliaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var board: UIView!
    var tileWidth : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let boardWidth = Int(self.board.frame.width) // ancho del tablero
        self.tileWidth = boardWidth / 4   // ancho de cada cuadro para que puedan entrar 4 cuadros por cada fila
        // Crear cuadros
        let tileFrame : CGRect = CGRect(x: 0, y: 0, width: self.tileWidth, height: self.tileWidth)
        let tile : UILabel = UILabel(frame: tileFrame)
        tile.backgroundColor = UIColor.red
        self.board.addSubview(tile)
    }
}

