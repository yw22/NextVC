//
//  FourViewController.swift
//  NextVC
//
//  Created by 김영욱 on 2022/05/23.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var mainLable: UILabel!
    
    var someString: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLable.text = someString
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
