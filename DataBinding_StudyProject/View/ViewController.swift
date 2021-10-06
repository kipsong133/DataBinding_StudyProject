//
//  ViewController.swift
//  DataBinding_StudyProject
//
//  Created by 김우성 on 2021/10/06.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    var dummyIntData = Array(10...20)
    
    // UI
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    
    // MARK: - Actions
    @IBAction func addButtonDidTap(_ sender: UIBarButtonItem) {
        /* 새로운 데이터를 추가합니다. */
        let new = Int.random(in: 100...200)
        dummyIntData.append(new)
    }
    
    
    // MARK: - Helpers
    private func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}


// MARK: - UITableView Protocol Method
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

