//
//  FirstViewController.swift
//  Nav&Tab_Code
//
//  Created by 오정석 on 3/12/2023.
//

import UIKit

class FirstViewController: UIViewController {

    var isLoggedIn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        makeUI()
        
    }
    
    // 다음화면을 띄우는 더 정확한 시점
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //로그인이 되어있지 않다면 로그인 화면 띄우기
        if !isLoggedIn {
            let vc = LoginViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: false, completion: nil)
        }
    }
    
    func makeUI() {
        view.backgroundColor = .gray
        
        // (네비게이션바 설정관련)
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()  //불투명으로
        //appearance.backgroundColor = .brown  //색상설정
        //appearance.configureWithTransparentBackground() //투명으로
        
        navigationController?.navigationBar.tintColor = .blue
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        title = "Main"
    }
    

}
