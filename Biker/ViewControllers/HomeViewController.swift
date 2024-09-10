//
//  HomeViewController.swift
//  Biker
//
//  Created by Sai Abhilash Gudavalli on 31/08/24.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        registerTableViewCells()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.backgroundColor = .white
    }
    
    func registerTableViewCells() {
        let xib = UINib(nibName: "BikerCardTableViewCell", bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: "BikerCardTableViewCell")
    }
    
    func prepareData() -> [BikerCard] {
        var data: [BikerCard] = []
        data.append(BikerCard(name: NSLocalizedString("one", comment: "tableview"), number: "12345678"))
        data.append(BikerCard(name: NSLocalizedString("two", comment: "tableview"), number: "12345678"))
        data.append(BikerCard(name: NSLocalizedString("three", comment: "tableview"), number: "12345678"))
        data.append(BikerCard(name: NSLocalizedString("four", comment: "tableview"), number: "12345678"))
        data.append(BikerCard(name: NSLocalizedString("five", comment: "tableview"), number: "12345678"))
        data.append(BikerCard(name: NSLocalizedString("six", comment: "tableview"), number: "12345678"))
        data.append(BikerCard(name: NSLocalizedString("seven", comment: "tableview"), number: "12345678"))
        data.append(BikerCard(name: NSLocalizedString("eight", comment: "tableview"), number: "12345678"))
        data.append(BikerCard(name: NSLocalizedString("nine", comment: "tableview"), number: "12345678"))
        
        return data
    }
    
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prepareData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "BikerCardTableViewCell", for: indexPath) as! BikerCardTableViewCell
        cell.contentView.backgroundColor = .white
        cell.nameLabel.textColor = .black
        cell.nameLabel.text = prepareData()[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
//        tableView.selectRow(at: indexPath, animated: true, scrollPosition: .middle)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
