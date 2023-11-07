//
//  ViewController.swift
//  clickerGame
//
//  Created by TYLER MOK on 10/3/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var pointsOutlet: UILabel!
    
    var storePoints = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func invaderButton(_ sender: Any) {
        var points = Int(pointsOutlet.text!) ?? 0
        points += 1
        storePoints = points
        pointsOutlet.text = "\(points)"
    }
    
    
    
    @IBAction func storeButton(_ sender: Any) {
        performSegue(withIdentifier: "blah", sender: self)
        print(storePoints)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController2
        
        nvc.secondStorePoints = storePoints
    }
}

