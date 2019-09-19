//
//  HomeViewController.swift
//  dogs_breeds
//
//  Created by Danilo on 18/09/19.
//  Copyright © 2019 Danilo. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var dogs: [String] = ["Poddle", "Pitbull","Dalmata","Pincher", "Pastor Alemao"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        tableView.delegate = self
//        tableView.dataSource = self
        tableView.register(UINib(nibName: BreedsNameCell.cellID, bundle: nil), forCellReuseIdentifier: BreedsNameCell.cellID)
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: BreedsNameCell.cellID, for: indexPath) as! BreedsNameCell
        cell.breedLabel.text = dogs[indexPath.row]
        return cell
    }
}
