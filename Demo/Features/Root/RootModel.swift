//
//  RootModel.swift
//  Demo
//
//  Created by Siam Biswas on 4/24/23.
//

import Foundation


protocol RootModelProtocol: Model {
    var topics:[Topics] { get set }
}

struct RootModel: RootModelProtocol{
    
    var topics:[Topics]
    
    enum CodingKeys: String, CodingKey {
        case topics = "RelatedTopics"
    }
}


struct Topics:Model, Equatable,Hashable{
    
    static func == (lhs: Topics, rhs: Topics) -> Bool {
        return lhs.firstUrl == rhs.firstUrl
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(firstUrl)
    }
    
    
    var firstUrl:String
    var icon:Icon
    var result:String
    var text:String
    
    var iconUrl:String{
        return "https://duckduckgo.com/" + icon.url
    }
    
    enum CodingKeys: String, CodingKey {
        case firstUrl = "FirstURL"
        case icon = "Icon"
        case result = "Result"
        case text = "Text"
    }
    
    func toList() -> ListModel{
        
        return ListModel(title:  text.components(separatedBy: "-").first ?? text, detail: result, image: iconUrl)
    }
}

struct Icon:Model{
    var url:String
    
    enum CodingKeys: String, CodingKey {
        case url = "URL"
    }
}
