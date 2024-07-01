//
//  ViewController.swift
//  Homework_2
//
//  Created by Айрат Фахрутдинов on 01.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    let users = [
        "user1": ("password1", "User One", "01.01.1990", "user1@example.com", "This is User One's bio."),
        "user2": ("password2", "User Two", "02.02.1992", "user2@example.com", "This is User Two's bio.")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let login = loginTextField.text, let password = passwordTextField.text else { return }
        
        if let user = users[login], user.0 == password {
            performSegue(withIdentifier: "showProfile", sender: login)
        } else {
            errorLabel.text = "Invalid login or password"
            errorLabel.isHidden = false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProfile" {
            if let destination = segue.destination as? ProfileViewController, let login = sender as? String {
                destination.user = users[login]
            }
        }
    }
}




