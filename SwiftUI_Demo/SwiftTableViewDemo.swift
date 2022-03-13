//
//  SwiftTableViewDemo.swift
//  SwiftUI_Demo
//
//  Created by Linhao CUI 崔林豪 on 2022/2/27.
//

import SwiftUI

struct SwiftTableViewDemo: View {
    
    let plans: [PlanModel] = Bundle.main.decode("plans.json")
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        addList()
                    }
                    //左对齐
                    Spacer()
                }
                //向上移动
                Spacer()
                    //.padding(.init(-50))
            }
            //Spacer()
        }
        .navigationTitle(" 表格UI")
        Spacer(minLength: 60)
    }
}

extension SwiftTableViewDemo {
    
    
    func addText() -> some View {
        Text("testTop")
            .foregroundColor(Color.purple)
            .font(.largeTitle)
            .background(Color.secondary)
            
    }
    
    func addList() -> some View {
        List(plans) { item in
            HStack(alignment: .top) {
                HStack {
                    Image("sss")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 83, height: 83)
                        .clipShape(Circle())
                        .overlay(Capsule()
                                    .stroke(Color.primary, lineWidth: 1.0)
                        )
                    VStack(alignment: .leading) {
                        Text(item.name).font(.headline)
                        Text(item.launchDate)
                    }
                }
                .padding(.top)
            }
        }

    }
     
    
}

struct SwiftTableViewDemo_Previews: PreviewProvider {
    static let plans: [PlanModel] = Bundle.main.decode("plans.json")
    static var previews: some View {
        Text("222")
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


