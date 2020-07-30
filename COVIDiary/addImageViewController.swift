//
//  addImageViewController.swift
//  COVIDiary
//
//  Created by Jayne BOTTARINI on 28/7/2020.
//  Copyright © 2020 Jayne BOTTARINI. All rights reserved.
//test 3
import UIKit

class addImageViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
   
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var friends: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var changeEvent: UITextField!
    @IBOutlet weak var changeFriends: UITextField!
    @IBOutlet weak var changeLocation: UITextField!
    @IBOutlet weak var changeDate: UITextField!
    
    @IBOutlet weak var nameEventButton: UIButton!
    @IBOutlet weak var nameFriendsButton: UIButton!
    @IBOutlet weak var nameLocationButton: UIButton!
    @IBOutlet weak var nameDateButton: UIButton!
    @IBOutlet weak var addToMyMemories: UIButton!
    
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBAction func addImage(_ sender: Any) {
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        image.allowsEditing = false
        
        self.present(image,animated: true)
        {
            //After is is complete
            // this is a random comment
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

    override func viewWillAppear(_ animated: Bool) {
        nameEventButton.isHidden = false
        nameFriendsButton.isHidden = false
        nameLocationButton.isHidden = false
        nameDateButton.isHidden = false
        addToMyMemories.isHidden = true
        
    }
    @IBAction func nameEvent(_ sender: Any) {
        eventTitle.text = changeEvent.text
        changeEvent.isHidden = true
        nameEventButton.isHidden = true
    }
    @IBAction func namePeople(_ sender: Any) {
        friends.text = changeFriends.text
        changeFriends.isHidden = true
        nameFriendsButton.isHidden = true
    }
    @IBAction func nameLocation(_ sender: Any) {
        location.text = changeLocation.text
        changeLocation.isHidden = true
        nameLocationButton.isHidden = true
    }
    @IBAction func nameDate(_ sender: Any) {
        date.text = changeDate.text
        changeDate.isHidden = true
        nameDateButton.isHidden = true
        addToMyMemories.isHidden = false
    }
    
    
     
        /*
    // MARK: - Navigation
// test-code-99
     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
