//
//  ViewController.swift
//  Biker
//
//  Created by Sai Abhilash Gudavalli on 31/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func onClickNext(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let tabVC = storyboard.instantiateViewController(withIdentifier: "tabVC")
        
        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(tabVC)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.view.backgroundColor = .white
    }


}

