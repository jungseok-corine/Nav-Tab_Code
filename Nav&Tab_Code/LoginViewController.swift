//
//  ViewController.swift
//  Nav&Tab_Code
//
//  Created by 오정석 on 3/12/2023.
//

import UIKit

class LoginViewController: UIViewController {

    private lazy var nextButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .blue
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(nextButtonTapeed), for: .touchUpInside)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
        
    }

    func makeUI() {
        view.backgroundColor = .yellow
        view.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            nextButton.heightAnchor.constraint(equalToConstant: 45),
            nextButton.widthAnchor.constraint(equalToConstant: 120),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    //버튼 누르면 동작하는 코드 ==> 로그인을 하면, dismiss
    @objc func nextButtonTapeed() {
        
        if let presentingVC = presentingViewController {
            let tabBarCon = presentingVC as! UITabBarController
            let nav = tabBarCon.viewControllers?[0] as! UINavigationController
            let firstVC = nav.viewControllers[0] as! FirstViewController
            firstVC.isLoggedIn.toggle()
        }
        
        dismiss(animated: true)
        
    }
    
    
}

