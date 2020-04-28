//
//  MainAppVC.swift
//  Let Me in
//
//  Created by Mohsin on 2020-04-26.
//  Copyright © 2020 Mohsin. All rights reserved.
//

import UIKit

class MainAppVC: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var username: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let unwrappedUsername = self.username else { return }
        greetingLabel.text = "Hello, \(unwrappedUsername) "
        
    }
    


}
