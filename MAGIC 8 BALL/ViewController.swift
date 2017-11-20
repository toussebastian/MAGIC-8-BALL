//
//  ViewController.swift
//  MAGIC 8 BALL
//
//  Created by SebastianT on 2017-11-20.
//  Copyright © 2017 SebastianT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mBallView: UIImageView!
    var mrandonIndex = 0;
    let Arrayball = ["ball1","ball2","ball3","ball4","ball5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
         updateImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
       
    }
    
    func updateImage(){
        mrandonIndex = Int(arc4random_uniform(5))
        mBallView.image = UIImage(named: Arrayball[mrandonIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImage()
    }
    


}

