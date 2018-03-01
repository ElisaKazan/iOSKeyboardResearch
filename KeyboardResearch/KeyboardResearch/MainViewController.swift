//
//  MainViewController.swift
//  KeyboardResearch
//
//  Created by Elisa Kazan on 2018-03-01.
//  Copyright © 2018 ElisaKazan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var tableView: UITableView = UITableView()
    var navigationItems: [String] = ["Default", "ASCII Capable", "Numbers and Punctuation", "URL", "Number Pad", "Phone Pad", "Name Phone Pad", "Email Address", "Decimal Pad", "Twitter", "Web Search"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
