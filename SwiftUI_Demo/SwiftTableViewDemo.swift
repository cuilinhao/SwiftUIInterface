//
//  SwiftTableViewDemo.swift
//  SwiftUI_Demo
//
//  Created by Linhao CUI 崔林豪 on 2022/2/27.
//

import SwiftUI

struct Resource: Codable, Identifiable {
    let id: Int
    let name: String
}

/*
 self.files.enumerated().forEach { i, path in
     // 通过文件扩展名解析 MIME 类型
     let mime: String
     var fileNameExtension = path.pathExtension
     if fileNameExtension.isEmpty {
         fileNameExtension = "jpg"
     }
 
 return self.enumerated().reduce(into: [[Element]]()) { (r, e) in
     let next = e.offset / length
     if next < r.count {
         r[next].append(e.element)
     } else {
         r.append([e.element])
     }
 }
 
 */
struct SwiftTableViewDemo: View {
    
    
    
    var body: some View {
        Text("Hello, World!")
            .background(Color.yellow)
        Button("test Data") {
            print("_______btn:")
            let sources = Bundle.configureData()
            sources.enumerated().forEach { dict in
                print("______data:\(dict)")
                
                switch dict.element.key {
                case "VehicleSwiftUIView":
                    print("___VehicleSwiftUIView__")
                case "PickerView":
                    print("___PickerView")
                default:
                    print("____default")
                }
            }
        }
    }
}


struct SwiftTableViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        SwiftTableViewDemo()
        //self.loadData()
    }
}

extension SwiftTableViewDemo {
    /*
    mutating func loadData(){
        
        let listData = Bundle.main.path(forResource: "", ofType: "plist")
        let dic = NSDictionary(contentsOfFile: listData ?? "")
        if let dataDic = dic {
            
            let dataList = dataDic.value(forKey: "Function") as! [String]
            for (i, _) in self.dataArray.enumerated() {
                if i <= 10 {
                    print("___data:___\(dataList[i])")
                    self.dataArray.append(dataList[i])
                }
            }
        }
    }
     */
    
}

