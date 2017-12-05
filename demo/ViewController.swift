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
    
    var tileArray : NSMutableArray = []
    var tileCenterArray : NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        makeTiles()
        randomTiles()
    }
    
    func makeTiles(){
        self.tileArray = []
        self.tileCenterArray = []
        let boardWidth = self.board.frame.width // ancho del tablero
        self.tileWidth = boardWidth / 4   // ancho de cada cuadro para que puedan entrar 4 cuadros por cada fila
        
        self.tileCenterX = self.tileWidth / 2
        self.tileCenterY = self.tileWidth / 2
        
        var tileNumber : Int = 1
        
        for _ in 0..<4{
            for _ in 0..<4{
                // Crear cuadros
                let tileFrame : CGRect = CGRect(x: 0, y: 0, width: self.tileWidth - 4, height: self.tileWidth - 4)
                let tile : CustomLabel = CustomLabel(frame: tileFrame)
                let currentCenter : CGPoint = CGPoint(x: self.tileCenterX, y: self.tileCenterY)
                tile.center = currentCenter
                tile.originCenter = currentCenter
                
                self.tileCenterArray.add(currentCenter)
                tile.backgroundColor = UIColor.red
                tile.text = String(tileNumber)
                tile.textAlignment = NSTextAlignment.center
                tile.font = UIFont.systemFont(ofSize: 24)
                tileNumber += 1
                
                self.board.addSubview(tile)
                
                self.tileArray.add(tile)
                
                self.tileCenterX = self.tileCenterX + self.tileWidth
            }
            self.tileCenterX = self.tileWidth / 2
            self.tileCenterY = self.tileCenterY + self.tileWidth
        }
        let lastTile : UILabel = self.tileArray.lastObject as! UILabel
        lastTile.removeFromSuperview()
        self.tileArray.removeObject(at: 15)
    }
    
    func randomTiles(){
        for anyTile in self.tileArray{
            let randomIndex : Int = Int(arc4random()) % self.tileCenterArray.count// obtenemos aleatoriamente un centro de nuestro array
            let randomCenter : CGPoint = self.tileCenterArray[randomIndex] as! CGPoint
            
            (anyTile as! CustomLabel).center = randomCenter
            self.tileCenterArray.removeObject(at: randomIndex)
            
        }
    }
}

class CustomLabel : UILabel{
    var originCenter : CGPoint = CGPoint(x: 0, y: 0)
}

