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
        updatesLabel.isHidden = false
        self.symptomsOutlet.frame.origin.y = self.updatesLabel.frame.origin.y + 50
        self.resourcesOutlet.frame.origin.y = self.symptomsOutlet.frame.origin.y + 70
    }
    
    @IBAction func symptomsButton(_ sender: Any) {
        self.resourcesOutlet.frame.origin.y += 150
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
