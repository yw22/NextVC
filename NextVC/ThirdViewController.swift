//
//  ThirdViewController.swift
//  NextVC
//
//  Created by 김영욱 on 2022/05/23.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    var someString: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = someString
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
