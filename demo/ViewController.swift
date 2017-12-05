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
        
        // Crear cuadros
        let tileFrame : CGRect = CGRect(x: 0, y: 0, width: 200, height: 200)
        let tile : UILabel = UILabel(frame: tileFrame)
        tile.backgroundColor = UIColor.red
        self.board.addSubview(tile)
    }
}

