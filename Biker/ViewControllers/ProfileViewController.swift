//
//  ProfileViewController.swift
//  Biker
//
//  Created by Sai Abhilash Gudavalli on 31/08/24.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    @IBAction func onClickEditProfile(_ sender: UIButton) {
        
        let editProfileVC = self.storyboard?.instantiateViewController(identifier: "editProfileVC") as! EditProfileController
        
        self.navigationController?.pushViewController(editProfileVC, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}
