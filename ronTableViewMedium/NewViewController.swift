//
//  NewViewController.swift
//  ronTableViewMedium
//
//  Created by Ronald Mourant on 4/28/15.
//  Copyright (c) 2015 Ron Mourant. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    @IBOutlet weak var productLabel: UILabel!
    var titleStringViaSegue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.productLabel.text = self.titleStringViaSegue
    }
}

