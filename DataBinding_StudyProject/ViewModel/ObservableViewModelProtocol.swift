//
//  ObservableViewModelProtocol.swift
//  DataBinding_StudyProject
//
//  Created by 김우성 on 2021/10/06.
//

import Foundation

protocol ObservableViewModelProtocol {
    associatedtype T
    
    func fetchData()
    
    func setError(_ message: String)
    
    /* 원천 데이터 */
    var dataSource: Observable<[T]> { get set }
    
    var errorMessage: Observable<String?> { get set }
    
    var error: Observable<Bool> { get set }
}

