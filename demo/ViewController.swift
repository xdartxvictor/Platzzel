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
    var tileWidth : CGFloat = 0.0
    var tileCenterX : CGFloat = 0.0
    var tileCenterY : CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let boardWidth = self.board.frame.width // ancho del tablero
        self.tileWidth = boardWidth / 4   // ancho de cada cuadro para que puedan entrar 4 cuadros por cada fila
        
        self.tileCenterX = self.tileWidth / 2
        self.tileCenterY = self.tileWidth / 2
        
        for _ in 0..<4{
            for _ in 0..<4{
                // Crear cuadros
                let tileFrame : CGRect = CGRect(x: 0, y: 0, width: self.tileWidth - 4, height: self.tileWidth - 4)
                let tile : UILabel = UILabel(frame: tileFrame)
                tile.center = CGPoint(x: self.tileCenterX, y: self.tileCenterY)
                tile.backgroundColor = UIColor.red
                self.board.addSubview(tile)
                self.tileCenterX = self.tileCenterX + self.tileWidth
            }
            self.tileCenterX = self.tileWidth / 2
            self.tileCenterY = self.tileCenterY + self.tileWidth
        }
    }
}

