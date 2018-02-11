//
//  DetailViewController.swift
//  InstrSampleApp
//
//  Created by Crisostomo Medina, Renzo on 11.02.18.
//  Copyright © 2018 Crisostomo Medina, Renzo. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    var item: Dictionary<String,String>?
    @IBOutlet var cityLabel: UILabel?
    @IBOutlet var locationLabel: UILabel?

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = item?["city"]
        cityLabel?.text = item?["city"]
        locationLabel?.text = item?["location"]
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

}

