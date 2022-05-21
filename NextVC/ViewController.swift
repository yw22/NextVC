//
//  ViewController.swift
//  NextVC
//
//  Created by 김영욱 on 2022/05/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // 1) 코드로 화면 이동 (다음화면이 코드로 작성되어있을때만 가능한 방법)
    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        let firstVC = FirstViewController()
        present(firstVC, animated: true, completion: nil)
        
    }
    
    
    // 2) 코드로 스토리보드 객체를 생성해서, 화면 이동
    @IBAction func storyBoardWithCodeButtonTapped(_ sender: UIButton){
        
        
        
    }
    
    // 3) 스토리보드에서의 화면 이동(간접 세그웨이)
    @IBAction func storyBoardWithSegueButtonTapped(_ sender: UIButton){
        
        
        
    }
    
    
    @IBAction func storyBoardWithButtonSegueButtonTapped(_ sender: UIButton){
        
        
        
    }
    
    
    
}

