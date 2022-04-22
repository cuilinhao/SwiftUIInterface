//
//  Bundel+Codeable.swift
//  SwiftUI_Demo
//
//  Created by Linhao CUI 崔林豪 on 2022/2/27.
//

import Foundation

extension Bundle {
    static func configureData() -> [String] {
        
       //var dataDictionary =  [String: String]
        //SwiftUIList.plist SwiftUIList
        let listData = Bundle.main.path(forResource: "SwiftUIList", ofType: "plist")
        let dic = NSDictionary(contentsOfFile: listData ?? "")
        
        let array = dic?.object(forKey: "datas")
        
        return (array as? [String]) ?? []
    }
}


extension Bundle {
    
   static func test() -> [String: Any]{
       
        if let path = Bundle.main.path(forResource: "SwiftUIList", ofType: "plist") {
            return (NSDictionary(contentsOfFile: path) as? [String: Any]) ?? [:]
        }else {
            return [:]
        }
        
    }
}


