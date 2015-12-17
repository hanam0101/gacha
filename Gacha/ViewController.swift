//
//  ViewController.swift
//  Gacha
//
//  Created by hana on 3/11/2015.
//  Copyright © 2015 hana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // 
    @IBAction func getRandomNumber() {
        number = Int(arc4random_uniform(10))
        NSLog("発生した乱数は...%dです", number)
    }
    //
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //
        let resultViewController = segue.destinationViewController as! ResuitViewController
        
        //
        resultViewController.number = self.number
    
    }
}