//
//  ViewController.swift
//  Let Me in
//
//  Created by Mohsin on 2020-04-19.
//  Copyright © 2020 Mohsin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func didTapLogin() {
        
        let deadline = DispatchTime.now() + .seconds(3)
        
        DispatchQueue.main.asyncAfter(deadline: deadline) {
             print("Login")
            self.performSegue(withIdentifier: "segue.Main.loginToMainApp" , sender: self.usernameTextField.text)
            
        }
        
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
        super.prepare(for: segue , sender: sender )
        
        if let mainAppVC = segue.destination as? MainAppVC, let username = sender as? String {
            
            mainAppVC.username = username
            
        }
    }


}

