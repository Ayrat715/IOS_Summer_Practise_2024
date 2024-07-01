//
//  ProfileViewController.swift
//  Homework_2
//
//  Created by Айрат Фахрутдинов on 01.07.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    var user: (String, String, String, String, String)?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let user = user {
            nameLabel.text = user.1
            dobLabel.text = user.2
            contactLabel.text = user.3
            bioLabel.text = user.4
            avatarImageView.image = UIImage(named: user.1) 
        }
    }
    
    @IBAction func logoutButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}


