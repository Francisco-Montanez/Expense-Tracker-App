//
//  LoginVC.swift
//  Expensiv Tracker
//
//  Created by Abdirizak Hassan on 3/1/22.
//

import UIKit

class LoginVC: UIViewController {
    
    let scrollView          = UIScrollView()
    let contentView         = UIView()
    
    let loginImageView      = UIImageView()
    
    let loginglbl          = ETLabel(textAlignment: .left, fontSize: 40)
    let registeryLabel      = ETLabel(textAlignment: .left, fontSize: 22)
    let usernameTextFeild   = UsernameTextField()
    let passwordTextFeild   = PasswordTextField()
    let forgetPassword      = EButton(titleColor: .link,
                                      title: "Forget Password")
    let loginBtn            = EButton(backgroundColor: .link,
                                      title: "Login",
                                      TextStyle: .headline)
    let singUpbtn           = EButton(titleColor: .link, title: "SingUp Now")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        confgiruVC()
        ConfigureScrollView()
        conigureLoginImage()
        configureLoginAndRegisteryLabel()
        configureTextFeilds()
        configforgetBtn()
        configLoginAndSingUpBtn()
        createDismissKeyboardTapGesture()
    }
    
    private func confgiruVC() {
        view.backgroundColor = .systemBackground
        contentView.addSubViews(loginImageView, loginglbl, usernameTextFeild, passwordTextFeild, forgetPassword, loginBtn, registeryLabel, singUpbtn)
        forgetPassword.addTarget(self, action: #selector(pushForgetVC), for: .touchUpInside)
        singUpbtn.addTarget(self, action: #selector(pushSingUpVC), for: .touchUpInside)
    }
    
    private func createDismissKeyboardTapGesture() {
        let tap  = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    private func ConfigureScrollView() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        scrollView.pinToEdges(to: view)
        contentView.pinToEdges(to: scrollView)
        
        NSLayoutConstraint.activate([
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 800)
        ])
    }
    
    private func conigureLoginImage() {
        loginImageView.contentMode  = .scaleAspectFit
        loginImageView.translatesAutoresizingMaskIntoConstraints = false
        loginImageView.image = Images.login_Image
        
        
        NSLayoutConstraint.activate([
            loginImageView.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 20),
            loginImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 20),
            loginImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            loginImageView.heightAnchor.constraint(equalToConstant: 350),
        ])
    }
    
    private func configureLoginAndRegisteryLabel() {
        loginglbl.text = "Login"
        loginglbl.font = .systemFont(ofSize: 40, weight: .bold)
        
        registeryLabel.text = "New Here"
        registeryLabel.font = .systemFont(ofSize: 22, weight: .regular)

        NSLayoutConstraint.activate([
            loginglbl.topAnchor.constraint(equalTo: loginImageView.bottomAnchor, constant: 10),
            loginglbl.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            loginglbl.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            loginglbl.heightAnchor.constraint(equalToConstant: 50),
            
            
            registeryLabel.topAnchor.constraint(equalTo: loginBtn.bottomAnchor, constant: 40),
            registeryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 130),
            registeryLabel.heightAnchor.constraint(equalToConstant: 22)
        ])
    }
    
    private func configureTextFeilds() {
        
        NSLayoutConstraint.activate([
            usernameTextFeild.topAnchor.constraint(equalTo: loginglbl.bottomAnchor, constant: 10),
            usernameTextFeild.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            usernameTextFeild.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            usernameTextFeild.heightAnchor.constraint(equalToConstant: 45),
            
            passwordTextFeild.topAnchor.constraint(equalTo: usernameTextFeild.bottomAnchor, constant: 10),
            passwordTextFeild.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            passwordTextFeild.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            passwordTextFeild.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    private func configforgetBtn() {
        
        NSLayoutConstraint.activate([
            forgetPassword.topAnchor.constraint(equalTo: passwordTextFeild.bottomAnchor, constant: 25),
            forgetPassword.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            forgetPassword.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 250),
        ])
    }
    
    private func configLoginAndSingUpBtn() {
        NSLayoutConstraint.activate([
            loginBtn.topAnchor.constraint(equalTo: forgetPassword.bottomAnchor, constant: 20),
            loginBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            loginBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            loginBtn.heightAnchor.constraint(equalToConstant: 50),
            
            singUpbtn.topAnchor.constraint(equalTo: registeryLabel.bottomAnchor, constant: -22),
            singUpbtn.leadingAnchor.constraint(equalTo: registeryLabel.trailingAnchor, constant: 6),
            singUpbtn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -100),
            singUpbtn.heightAnchor.constraint(equalTo: registeryLabel.heightAnchor)
            
        ])
    }
    
    @objc private func pushForgetVC() {
        let ForgetVC = UINavigationController(rootViewController: ForgetPasswordVC())
        present(ForgetVC, animated: true)
    }
    
    @objc private func pushSingUpVC() {
        let singUPVC = UINavigationController(rootViewController: SingUpVC())
        singUPVC.modalPresentationStyle = .fullScreen
        singUPVC.modalTransitionStyle   = .flipHorizontal
        present(singUPVC, animated: true, completion: nil)
    }

}
