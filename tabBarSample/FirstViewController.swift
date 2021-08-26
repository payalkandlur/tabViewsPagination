//
//  FirstViewController.swift
//  tabBarSample
//
//  Created by Payal Kandlur on 11/08/21.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var recordsArray: [Int] = Array()
    var limit = 20
    let totalEntries = 100
    override func viewDidLoad() {
        super.viewDidLoad()
        var index = 0
        while(index < limit) {
            recordsArray.append(index)
            index = index+1
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recordsArray.count
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if (indexPath.row == recordsArray.count-1) {
            //we are now at the last cell, so bring more records
            if recordsArray.count < totalEntries {
                //load pending data from the API
                var index = recordsArray.count
                limit = index + 20
                while(index < limit) {
                    recordsArray.append(index)
                    index = index+1
                }
                self.perform(#selector(loadTable), with: nil, afterDelay: 1.0)
            }
        }
    }
    
    @objc func loadTable() {
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "listCell")
        if (cell == nil) {
            cell = UITableViewCell(style: .default, reuseIdentifier: "listCell ")
        }
        cell?.textLabel?.text = "Row \(recordsArray[indexPath.row])"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
}
