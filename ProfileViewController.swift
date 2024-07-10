//
//  ProfileViewController.swift
//  Homework_3
//
//  Created by Айрат Фахрутдинов on 08.07.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let avatarImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "avatar"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Имя: User1"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let dobLabel: UILabel = {
        let label = UILabel()
        label.text = "Дата рождения: 01.01.2000"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Почта: user1@example.com"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let genresLabel: UILabel = {
        let label = UILabel()
        label.text = "Любимые жанры: Fiction, Mystery"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let logoutButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Выйти", for: .normal)
        button.addTarget(self, action: #selector(logoutButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(avatarImageView)
        view.addSubview(nameLabel)
        view.addSubview(dobLabel)
        view.addSubview(emailLabel)
        view.addSubview(genresLabel)
        view.addSubview(logoutButton)
        
        NSLayoutConstraint.activate([
            avatarImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            avatarImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            avatarImageView.heightAnchor.constraint(equalToConstant: 100),
            
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 20),
            
            dobLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dobLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            
            emailLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailLabel.topAnchor.constraint(equalTo: dobLabel.bottomAnchor, constant: 10),
            
            genresLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            genresLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            
            logoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoutButton.topAnchor.constraint(equalTo: genresLabel.bottomAnchor, constant: 20)
        ])
    }
    
    @objc func logoutButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
}

