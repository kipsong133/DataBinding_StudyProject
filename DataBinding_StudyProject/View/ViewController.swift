//
//  ViewController.swift
//  DataBinding_StudyProject
//
//  Created by 김우성 on 2021/10/06.
//

import UIKit

class ViewController: UIViewController {
    
    // data
    var dummyIntData = Array(10...20)
    
    // UI
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    private func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dummyIntData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(dummyIntData[indexPath.row]) 번 째 데이터 입니다. ^_^"
        return cell
    }
}

