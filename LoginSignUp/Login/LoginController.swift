//
//  ViewController.swift
//  LoginSignUp
//
//  Created by Mohamed Kelany on 6/6/18.
//  Copyright © 2018 Mohamed Kelany. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    let logo: UIImageView = {
       let l = UIImageView()
            l.image = #imageLiteral(resourceName: "espresso")
            l.contentMode = .scaleAspectFit
            l.layer.masksToBounds = true
            l.layer.cornerRadius = 20
        return l
        
    }()
    
    let emailTextField: UITextField = {
        let e = UITextField()
        let attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
            e.attributedPlaceholder = attributedPlaceholder
            e.textColor = .white
            e.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)
        return e
        
    }()
    
    let passwordTextField: UITextField = {
        let p = UITextField()
        let attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white])
            p.attributedPlaceholder = attributedPlaceholder
            p.textColor = .white
            p.isSecureTextEntry = true
            p.setBottomBorder(backgroundColor: GREEN_THEME, borderColor: .white)

        return p
        
    }()
    

    let loginButton:UIButton = {
        let l = UIButton(type: .system)
            l.setTitleColor(.white, for: .normal)
            l.setTitle("Log In", for: .normal)
            l.backgroundColor = UIColor.rgb(r: 89, g: 156, b: 120)
            l.layer.cornerRadius = 10
        return l
    }()
    let forgetPasswordButton:UIButton = {
        let f = UIButton(type: .system)
        f.setTitleColor(.white, for: .normal)
        f.setTitle("forget password?", for: .normal)
        f.backgroundColor = GREEN_THEME
        return f
    }()
    
    let haveAccountButton:UIButton = {
        
        let color = UIColor.rgb(r: 89, g: 156, b: 120)
        let font = UIFont.systemFont(ofSize: 16)
        
        let h = UIButton(type: .system)
            h.backgroundColor = GREEN_THEME
        let attributedTitle = NSMutableAttributedString(string: "Don't have account?", attributes: [NSAttributedStringKey.foregroundColor: color, NSAttributedStringKey.font: font])
            h.setAttributedTitle(attributedTitle,for: .normal)
            attributedTitle.append(NSAttributedString(string: "Sign Up", attributes: [NSAttributedStringKey.foregroundColor: UIColor.white]))
        h.addTarget(self, action: #selector(signupAction), for: .touchUpInside)
        
        return h
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = GREEN_THEME
        navigationController?.isNavigationBarHidden = true
        
        setupAddLogo()
        setupTextFieldComponents()
        setupLoginButton()
        setupForgetPasswordButton()
        setupHaveAccountButton()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    fileprivate func setupAddLogo() {
        view.addSubview(logo)
        logo.anchors(top: view.safeAreaLayoutGuide.topAnchor, topPad: 64, bottom: nil, bottomPad: 0, left: nil, leftPad: 0, right: nil, rightPad: 0, height: 150, width: 150)
        logo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func signupAction() {
        print("Let's sign up")
        let signupController = SignupController()
        navigationController?.pushViewController(signupController, animated: true)
    
    }

    
    fileprivate func setupTextFieldComponents(){
        setupEmailField()
        setupPasswordField()
    }
    
    fileprivate func setupEmailField(){
        view.addSubview(emailTextField)
        emailTextField.anchors(top: nil, topPad: 0, bottom: nil, bottomPad: 0, left: view.leftAnchor, leftPad: 24, right: view.rightAnchor, rightPad: 24, height: 30, width: 0)
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        
    }
    
    fileprivate func setupPasswordField(){
        view.addSubview(passwordTextField)
        passwordTextField.anchors(top: emailTextField.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: emailTextField.leftAnchor, leftPad: 0, right: emailTextField.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    
    fileprivate func setupLoginButton(){
        view.addSubview(loginButton)
        loginButton.anchors(top: passwordTextField.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: passwordTextField.leftAnchor, leftPad: 0, right: passwordTextField.rightAnchor, rightPad: 0, height: 50, width: 0)

        
    }
    fileprivate func setupForgetPasswordButton() {
        view.addSubview(forgetPasswordButton)
        
        forgetPasswordButton.anchors(top: loginButton.bottomAnchor, topPad: 8, bottom: nil, bottomPad: 0, left: loginButton.leftAnchor, leftPad: 0, right: loginButton.rightAnchor, rightPad: 0, height: 30, width: 0)
    }
    
    fileprivate func setupHaveAccountButton(){
        view.addSubview(haveAccountButton)
        
        haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.bottomAnchor, bottomPad: 8, left: view.leftAnchor, leftPad: 12, right: view.rightAnchor, rightPad: 12, height: 30, width: 0)
        
    }
    
    
}

