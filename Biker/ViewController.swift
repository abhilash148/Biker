//
//  ViewController.swift
//  Biker
//
//  Created by Sai Abhilash Gudavalli on 31/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func onClickNext(_ sender: UIButton) {
        
        print("Next button clicked")
        
        let secondVC = self.storyboard?.instantiateViewController(identifier: "SecondVC") as! SecondViewController
        
        self.navigationController?.pushViewController(secondVC, animated: true)
        
        
        
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

