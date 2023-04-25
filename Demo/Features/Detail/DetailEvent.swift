//
//  DetailEvent.swift
//  Demo
//
//  Created by Siam Biswas on 4/24/23.
//

import Foundation

enum DetailState{
    case empty,populated(DetailModel),loading,error
    
    var data:DetailModel?{
        switch self{
        case let .populated(data):
            return data
        default:
            return nil
        }
    }
}

enum  DetailAction{
    case next
}
