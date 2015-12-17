//
//  ResuitViewController.swift
//  Gacha
//
//  Created by hana on 4/11/2015.
//  Copyright © 2015 hana. All rights reserved.
//

import UIKit

class ResuitViewController: UIViewController {
    //
    var number: Int!
    //
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NSLog("...%d", number)
        
            if number == 9 {
                //Super Rare Monster
                monsterImageView.image = UIImage(named: "monster010")
                backgroundImageView.image = UIImage(named: "bg_gold")
            }else if number > 7 {
                //Rare Monster
                monsterImageView.image = UIImage(named: "monster006")
                backgroundImageView.image = UIImage(named: "bg_red")
            }else {
                //Normal Monster
                monsterImageView.image = UIImage(named: "monster003")
                backgroundImageView.image = UIImage(named: "bg_blue")
        }
    }

    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func back() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
