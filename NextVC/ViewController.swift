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
        
        firstVC.someString = "데이터 전달"
        
        firstVC.mainLabel.text = "데이터 전달"
        
        firstVC.modalPresentationStyle = .fullScreen
        present(firstVC, animated: true, completion: nil)
        
    }
    
    
    // 2) 코드로 스토리보드 객체를 생성해서, 화면 이동
    @IBAction func storyBoardWithCodeButtonTapped(_ sender: UIButton){
        
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController else { return }
        
        secondVC.modalPresentationStyle = .custom
        secondVC.someString = "데이터 전달2"
        
        present(secondVC, animated: true, completion: nil)
    }
    
    // 3) 스토리보드에서의 화면 이동(간접 세그웨이)
    @IBAction func storyBoardWithSegueButtonTapped(_ sender: UIButton){
        
        performSegue(withIdentifier: "toThirdVC", sender: self)
        
        
    }
    

    
    // 세그웨이는 prepare메서드를 이용하여 데이터를 전달
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdVC"{
            let thirdVC = segue.destination as! ThirdViewController
            
            // 데이터 전달
            thirdVC.someString = "데이터3 전달"
        }
        
        
        if segue.identifier == "toFourthVC"{
            let fourthVC = segue.destination as! FourthViewController
            
            // 데이터 전달
            fourthVC.someString = "데이터4 전달"
        }
        
        
    }
    
    
    // 버튼에서 직접적으로 연결을 했을때에만 사용가능
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        
        return true
    }
    
    
}

