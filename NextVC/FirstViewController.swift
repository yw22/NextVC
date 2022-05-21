//
//  FirstViewController.swift
//  NextVC
//
//  Created by 김영욱 on 2022/05/22.
//

import UIKit



class FirstViewController: UIViewController {
    
    let mainLabel = UILabel()
    lazy var backButton: UIButton = {
        let back = UIButton(type: .custom)
        back.setTitle("Back", for: .normal)
        back.setTitleColor(.white, for: .normal)
        back.backgroundColor = .blue
        back.titleLabel?.font = .boldSystemFont(ofSize: 20)
        back.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return back
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        makeAutoLayout()
        
        
    }
    
    
    func setup(){
        mainLabel.text = "안녕하세요!!!"
        mainLabel.font = .systemFont(ofSize: 22)
        
        view.addSubview(mainLabel)
        view.addSubview(backButton)
        
        view.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
    }
    
    func makeAutoLayout() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    
    
    @objc func backButtonTapped() {
        
    }
    
}
