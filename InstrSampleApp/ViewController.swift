//
//  ViewController.swift
//  InstrSampleApp
//
//  Created by Crisostomo Medina, Renzo on 11.02.18.
//  Copyright © 2018 Crisostomo Medina, Renzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let dataSource: [Dictionary<String,String>]
    @IBOutlet var tableView: UITableView?

    required init?(coder aDecoder: NSCoder) {
        let path = Bundle.main.path(forResource: "Locations", ofType: "plist")
        dataSource = NSArray.init(contentsOfFile: path!) as! [Dictionary<String,String>]
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Locations"
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier?.compare("Detail") == .orderedSame {
            let controller = segue.destination as! DetailViewController
            guard let selectedRow = tableView?.indexPathForSelectedRow?.row else {
                return
            }
            let item = dataSource[selectedRow]
            controller.item = item
        }
    }

}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = dataSource[indexPath.row]
        cell.textLabel?.text = item["city"]
        return cell
    }

}

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }

}

