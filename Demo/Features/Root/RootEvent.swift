//
//  RootEvent.swift
//  Demo
//
//  Created by Siam Biswas on 4/24/23.
//

import Foundation

enum RootState{
    case empty,populated([Topics]),loading,error(String)
}

enum  RootAction{
    case next
}



