//
//  BookDetailViewController.swift
//  Homework_3
//
//  Created by Айрат Фахрутдинов on 08.07.2024.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    var bookTitle: String?
    var bookAuthor: String?
    var isFavorite: Bool = false
    
    let bookTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bookAuthorLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "This is a brief description of the book."
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let favoriteButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Добавить в избранное", for: .normal)
        button.addTarget(self, action: #selector(favoriteButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Детали книги"
        setupViews()
        configureBookDetails()
    }
    
    func setupViews() {
        view.addSubview(bookTitleLabel)
        view.addSubview(bookAuthorLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(favoriteButton)
        
        NSLayoutConstraint.activate([
            bookTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bookTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            
            bookAuthorLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bookAuthorLabel.topAnchor.constraint(equalTo: bookTitleLabel.bottomAnchor, constant: 20),
            
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: bookAuthorLabel.bottomAnchor, constant: 20),
            
            favoriteButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            favoriteButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20)
        ])
    }
    
    func configureBookDetails() {
        bookTitleLabel.text = bookTitle
        bookAuthorLabel.text = bookAuthor
        favoriteButton.setTitle(isFavorite ? "Удалить из избранного" : "Добавить в избранное", for: .normal)
    }
    
    @objc func favoriteButtonTapped() {
        isFavorite.toggle()
        favoriteButton.setTitle(isFavorite ? "Удалить из избранного" : "Добавить в избранное", for: .normal)
    }
}
