//
//  testModel.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/4.
//

import Foundation

struct Plan: Codable,Identifiable {
    struct Member: Codable {
        let name: String
        let birth: String
    }
    
    let id: Int
    let name: String
    let member:[Member]
    let description: String
    let hasBadge: Bool
    var imageName: String{
        hasBadge ? "test\(id)" : "placeholder"
    }
    
    var isAddIce: Bool = true
    var isAddSugar: Bool = true
    
   var specialREquest = true {
        didSet{
            if !specialREquest {
                isAddIce = true
                isAddSugar = true
            }
        }
    }
    
}

