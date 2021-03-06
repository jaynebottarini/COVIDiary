//
//  informationViewController.swift
//  COVIDiary
//
//  Created by Jayne BOTTARINI on 28/7/2020.
//  Copyright © 2020 Jayne BOTTARINI. All rights reserved.
//


import UIKit

class informationViewController: UIViewController {
    
    // testing
    @IBOutlet weak var symptomsOutlet: UIButton!
    @IBOutlet weak var resourcesOutlet: UIButton!
    @IBOutlet weak var CDCButton: UIButton!
    @IBOutlet weak var webMDButton: UIButton!
    @IBOutlet weak var testingButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CDCButton.isHidden = true
        webMDButton.isHidden = true
        testingButton.isHidden = true
    }
    
    @IBAction func CDCLink(_ sender: Any) {
        let CDCurl = URL (string: "https://www.cdc.gov/covid-data-tracker/index.html#cases")!
        UIApplication.shared.open(CDCurl)
    }
    @IBAction func webMDLink(_ sender: Any) {
        let webMDurl = URL (string: "https://www.webmd.com/lung/covid-19-symptoms#1")!
        UIApplication.shared.open(webMDurl)
    }
    @IBAction func testingLink(_ sender: Any) {
        let testingurl = URL (string: "https://www.goodrx.com/blog/drive-thru-coronavirus-testing-near-me/")!
        UIApplication.shared.open(testingurl)
    }
    
    @IBAction func updatesButton(_ sender: Any) {
        UIView.animate(withDuration: 0.25, delay: 0, options: .curveLinear, animations: {
               self.symptomsOutlet.center.y += 150
           }, completion: nil)
        UIView.animate(withDuration: 0.25, delay: 0, options: .curveLinear, animations: {
            self.resourcesOutlet.center.y += 160
        }, completion: nil)
        CDCButton.isHidden = false
    }
    
    @IBAction func symptomsButton(_ sender: Any) {
        UIView.animate(withDuration: 0.25, delay: 0, options: .curveLinear, animations: {
            self.resourcesOutlet.center.y += 160
        }, completion: nil)
        webMDButton.isHidden = false
        
    }
    
    @IBAction func resourcesButton(_ sender: Any) {
        testingButton.isHidden = false
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
