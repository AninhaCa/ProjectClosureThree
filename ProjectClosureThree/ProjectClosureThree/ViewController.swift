//
//  ViewController.swift
//  ProjectClosureThree
//
//  Created by Ana Paula Silva de Sousa on 23/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var arrayPizza: Pizza?
    let request = Request()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView() {
        request.requestPizza { pizza in
            self.arrayPizza = pizza
            self.tableView.reloadData()
        }
    }
}

