//
//  KeyboardViewController.swift
//  KeyboardResearch
//
//  Created by Elisa Kazan on 2018-03-01.
//  Copyright © 2018 ElisaKazan. All rights reserved.
//

import UIKit

class KeyboardViewController: UIViewController {
    
    // This is the template ViewController Class
    var titleLabel: UILabel!
    var descriptionLabel: UILabel!
    var exampleLabel: UILabel!
    var exampleText: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupViews()
        
    }
    
    func setupViews() {
        setupTitle()
        setupDescription()
    }
    
    func setupTitle() {
        titleLabel = UILabel()
        titleLabel.text = "Title goes here"
        titleLabel.textAlignment = NSTextAlignment.center
        view.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // TODO: Test this part on older device
        if #available(iOS 11.0, *) {
            let guide = view.safeAreaLayoutGuide
            titleLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor).isActive = true
            titleLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor).isActive = true
            titleLabel.topAnchor.constraint(equalTo: guide.topAnchor).isActive = true
            titleLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        } else {
            NSLayoutConstraint(item: titleLabel,
                               attribute: .top,
                               relatedBy: .equal,
                               toItem: view, attribute: .top,
                               multiplier: 1.0, constant: 0).isActive = true
            NSLayoutConstraint(item: titleLabel,
                               attribute: .leading,
                               relatedBy: .equal, toItem: view,
                               attribute: .leading,
                               multiplier: 1.0,
                               constant: 0).isActive = true
            NSLayoutConstraint(item: titleLabel, attribute: .trailing,
                               relatedBy: .equal,
                               toItem: view,
                               attribute: .trailing,
                               multiplier: 1.0,
                               constant: 0).isActive = true
            
            titleLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }
    }
    
    func setupDescription() {
        descriptionLabel = UILabel()
        descriptionLabel.text = "Description goes here"
        view.addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        descriptionLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //let centerX: NSLayoutConstraint = descriptionLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor)
        //let centerY: NSLayoutConstraint = descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor)
        //let widthConstraint: NSLayoutConstraint = descriptionLabel.widthAnchor.constraint(equalTo: view.widthAnchor)
        //view.addConstraints([centerX, centerY, widthConstraint])
    }

}
