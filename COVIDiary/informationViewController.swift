//
//  informationViewController.swift
//  COVIDiary
//
//  Created by Jayne BOTTARINI on 28/7/2020.
//  Copyright © 2020 Jayne BOTTARINI. All rights reserved.
//

import UIKit

class informationViewController: UIViewController {
    @IBOutlet weak var symptomsOutlet: UIButton!
    
    @IBOutlet weak var updatesLabel: UILabel!
    @IBOutlet weak var resourcesOutlet: UIButton!
    @IBOutlet weak var symptomsLabel: UILabel!
    
    @IBOutlet weak var resourcesLabel: UILabel!
    
    override func viewDidLoad() {
        updatesLabel.isHidden = true
        super.viewDidLoad()
    }
    
    @IBAction func updatesButton(_ sender: Any) {
        UIView.animate(withDuration: 0.75, delay: 0, options: .curveLinear, animations: {
               self.symptomsOutlet.center.y += 150
           }, completion: nil)
        UIView.animate(withDuration: 0.75, delay: 0, options: .curveLinear, animations: {
            self.resourcesOutlet.center.y += 160
        }, completion: nil)
    }
    
    @IBAction func symptomsButton(_ sender: Any) {
        UIView.animate(withDuration: 0.75, delay: 0, options: .curveLinear, animations: {
            self.resourcesOutlet.center.y += 160
        }, completion: nil)
    }
    
    @IBAction func resourcesButton(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
