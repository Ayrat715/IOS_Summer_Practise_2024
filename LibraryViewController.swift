//
//  LibraryViewController.swift
//  Homework_3
//
//  Created by Айрат Фахрутдинов on 08.07.2024.
//

import UIKit

class LibraryViewController: UITableViewController {
    
    let books = [
        ("Ангелы и демоны", "Дэн Браун", false),
        ("Убить пересмешника", "Харпер Ли", true),
        ("Пойди поставь сторожа", "Харпер Ли", false),
        ("Метро 2033", "Дмитрий Глуховский", true),
        ("Код да Винчи", "Дэн Браун", false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Библиотека"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "bookCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
        let book = books[indexPath.row]
        cell.textLabel?.text = "\(book.0), \(book.1)"
        cell.accessoryType = book.2 ? .checkmark : .none
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let bookDetailVC = BookDetailViewController()
        bookDetailVC.bookTitle = books[indexPath.row].0
        bookDetailVC.bookAuthor = books[indexPath.row].1
        bookDetailVC.isFavorite = books[indexPath.row].2
        navigationController?.pushViewController(bookDetailVC, animated: true)
    }
}
