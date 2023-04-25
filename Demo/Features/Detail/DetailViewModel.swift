//
//  DetailViewModel.swift
//  Demo
//
//  Created by Siam Biswas on 4/24/23.
//

import Foundation

protocol DetailViewModelProtocol: ViewModel<DetailCoordinatorProtocol,DetailDependencyProtocol,DetailAction,DetailState> {
    
}

class DetailViewModel: ViewModel<DetailCoordinatorProtocol,DetailDependencyProtocol,DetailAction,DetailState>, DetailViewModelProtocol {
    
    override func initialize() {
        super.initialize()
    }
    
    override func setupReactive() {
        super.setupReactive()
    }
    
}
