//
//  ViewController.swift
//  DataBinding_StudyProject
//
//  Created by 김우성 on 2021/10/06.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    var viewModel = ViewModel()
    
    // UI
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    
    // MARK: - Actions
    @IBAction func addButtonDidTap(_ sender: UIBarButtonItem) {
        /*
         * 새로운 데이터를 추가합니다.
         * 실질적인 데이터 추가는 ViewModel이 담당합니다.
         */

        let new = Int.random(in: 100...200)
        viewModel.addData(new)
    }
    
    @IBAction func deleteButtonDidTap(_ sender: UIBarButtonItem) {
        viewModel.deleteData()
    }
    
    // MARK: - Helpers
    private func setUpTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        
        /* 데이터와 테이블뷰(UI)를 바인딩합니다. */
        viewModel.dataSource.bind { [weak self] _ in
            guard let self = self else { return }
            self.tableView.reloadData()
        }
    }
}


// MARK: - UITableView Protocol Method
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.dataSource.value.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(viewModel.dataSource.value[indexPath.row]) 번 째 데이터 입니다. ^_^"
        return cell
    }
}

