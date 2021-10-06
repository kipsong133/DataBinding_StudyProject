//
//  ViewModel.swift
//  DataBinding_StudyProject
//
//  Created by 김우성 on 2021/10/06.
//

import Foundation

class ViewModel: ObservableViewModelProtocol {
    
    func fetchData() {
        print("DEBUG: 데이터를 가져옵니다.")
    }
    
    func setError(_ message: String) {
        print("DEBUG: 에러메세지 \(message)")
    }
    
    var dataSource: Observable<[Int]> = Observable([])
    
    var errorMessage: Observable<String?> = Observable(nil)
    
    var error: Observable<Bool> = Observable(false)
    
    typealias T = Int
    
    
}
