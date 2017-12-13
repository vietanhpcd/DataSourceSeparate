//
//  TableViewController.swift
//  DataSourceSeparate
//
//  Created by Anhdzai on 12/12/17.
//  Copyright © 2017 Anhdzai. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let dataSource = ListDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataSource
    }
}
// MARK: Table view Delegate
class Index {
    private let data = ["item1", "item2"]
    func allData() -> [String] {
        return data
    }
}
// MARK: Table view Data source
class ListDataSource: NSObject, UITableViewDataSource {
    let dataSource = Index()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataSource.allData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = dataSource.allData()[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataIndex", for: indexPath)
        cell.textLabel?.text = data
        return cell
    }
}
