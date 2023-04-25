//
//  DetailModel.swift
//  Demo
//
//  Created by Siam Biswas on 4/24/23.
//

import Foundation

protocol DetailModelProtocol: Model {
    var title:String { get set }
    var detail:String { get set }
    var image:String { get set }
}

struct DetailModel: DetailModelProtocol{
    var title:String
    var detail:String
    var image:String
}

