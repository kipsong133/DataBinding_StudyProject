//
//  ViewModel.swift
//  DataBinding_StudyProject
//
//  Created by 김우성 on 2021/10/06.
//

import Foundation

class ViewModel: ObservableViewModelProtocol {
    typealias T = Int
    
    // MARK: - Properties
    var dataSource: Observable<[Int]> = Observable([])
    
    var errorMessage: Observable<String?> = Observable(nil)
    
    var error: Observable<Bool> = Observable(false)
    
    
    // MARK: - Lifecycle
    init() { }
    
    
    // MARK: - Helpers
    func fetchData() {
        print("DEBUG: 데이터를 가져옵니다.")
        /* 데이터를 가져온 후, 원하는 로직을 작성합니다.*/
    }
    
    func setError(_ message: String) {
        print("DEBUG: 에러메세지 \(message)")
        /* 에러 발생 시, 처리할 로직을 작성합니다.*/
        self.errorMessage = Observable(message)
        self.error = Observable(true)
    }
}
