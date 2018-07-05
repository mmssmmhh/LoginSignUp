//
//  SignupController.swift
//  LoginSignUp
//
//  Created by Mohamed Kelany on 6/6/18.
//  Copyright © 2018 Mohamed Kelany. All rights reserved.
//

import UIKit

class SignupController: UIViewController {
    
    let haveAccountButton:UIButton = {
        
        let color = UIColor.rgb(r: 89, g: 156, b: 120)
        let font = UIFont.systemFont(ofSize: 16)
        
        let h = UIButton(type: .system)
        h.backgroundColor = GREEN_THEME
        let attributedTitle = NSMutableAttributedString(string: "Already have account?", attributes: [NSAttributedStringKey.foregroundColor: color, NSAttributedStringKey.font: font])
        h.setAttributedTitle(attributedTitle,for: .normal)
        attributedTitle.append(NSAttributedString(string: "Sign In", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white]))
        h.addTarget(self, action: #selector(signInAction), for: .touchUpInside)
        
        return h
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = GREEN_THEME
        setupHaveAccountButton()
        // Do any additional setup after loading the view.
    }
    
    @objc func signInAction() {
        navigationController?.popViewController(animated: true)
    }
    
    func setupHaveAccountButton() {
        view.addSubview(haveAccountButton)
        haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.bottomAnchor, bottomPad: 8, left: view.leftAnchor, leftPad: 0, right: view.rightAnchor, rightPad: 0, height: 20, width: 0)
    }

}
