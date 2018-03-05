//
//  MainViewController.swift
//  KeyboardResearch
//
//  Created by Elisa Kazan on 2018-03-01.
//  Copyright © 2018 ElisaKazan. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    let navigationItems: [String] = ["Default", "ASCII Capable", "Numbers and Punctuation", "URL", "Number Pad", "Phone Pad", "Name Phone Pad", "Email Address", "Decimal Pad", "Twitter", "Web Search"]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupTableView()
    }
    
    func setupNavigationBar() {
        navigationItem.title = "Keyboard Types"
    }
    
    func setupTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell-id")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return navigationItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell-id", for: indexPath)

        cell.textLabel?.text = navigationItems[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Tapped")
        let viewController = KeyboardViewController()
        self.show(viewController, sender: self)
        
    }
}




