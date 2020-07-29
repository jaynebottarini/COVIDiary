//
//  addImageViewController.swift
//  COVIDiary
//
//  Created by Jayne BOTTARINI on 28/7/2020.
//  Copyright © 2020 Jayne BOTTARINI. All rights reserved.
//

import UIKit

class addImageViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
   
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var friends: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var changeEvent: UITextField!
    @IBOutlet weak var changeFriends: UITextField!
    @IBOutlet weak var changeLocation: UITextField!
    
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBAction func addImage(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        image.allowsEditing = false
        
        self.present(image,animated: true)
        {
            //After is is complete
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
            {
                imageView1.image = image
            }
            else
            {
                //error message
        }
        self.dismiss(animated: true, completion: nil)
        
    } 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   /*I forgot we needed buttons haha so this is the code that can go under them
    eventTitle.text = changeEvent
    changeEvent.isHidden = true
    friends.text = changeFriends
    changeFriends.isHidden = true
    location.text = changeLocation
    changeLocation.isHidden = true
   */
     
        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
