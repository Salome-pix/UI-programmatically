//
//  LoginController.swift
//  TICKTOY
//
//  Created by Mcbook Pro on 21.07.22.
//

import UIKit

class LoginController: UIViewController {
    
   
    
    let emailTextFiled: UITextField = {
        
        var tf = UITextField()
        tf.backgroundColor = UIColor(white: 1, alpha: 0.7)
        tf.textColor = .white
        tf.borderStyle = .none
        tf.placeholder = "Email"
        tf.addConstraint(tf.heightAnchor.constraint(equalToConstant: 40))
        tf.layer.shadowColor = UIColor.black.cgColor
        tf.layer.shadowRadius = 10
        tf.layer.shadowOpacity = 1
        tf.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        tf.layer.cornerRadius = 15
        return tf
    }()
    
    let passwordTextFiled: UITextField = {
        var tf = UITextField()
        tf.backgroundColor = UIColor(white: 1, alpha: 0.7)
        tf.textColor = .white
        tf.borderStyle = .none
        tf.placeholder = "Password"
        tf.addConstraint(tf.heightAnchor.constraint(equalToConstant: 40))
        tf.layer.shadowColor = UIColor.black.cgColor
        tf.layer.shadowRadius = 10
        tf.layer.shadowOpacity = 1
        tf.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        tf.layer.cornerRadius = 15
        return tf
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.addConstraint(button.heightAnchor.constraint(equalToConstant: 50))
        
        return button
    }()
    
    private let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        let atributetdTitle = NSMutableAttributedString(string:"Dont have an account?")
        button.setTitle("Dont have an account?  Sign Up", for: .normal)
        
        button.setTitleColor(.white, for: .normal)
        button.addConstraint(button.heightAnchor.constraint(equalToConstant: 50))
        
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    func configureUI(){
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPink.cgColor , UIColor.systemCyan.cgColor]
        
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        let stackView = UIStackView(arrangedSubviews: [emailTextFiled, passwordTextFiled,loginButton,forgotPasswordButton])
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20

        view.addSubview(stackView)

        // autolayout constraint
        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            stackView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 50),
            stackView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -50),
            stackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 400)
        ])
        
    }
    
   
}
