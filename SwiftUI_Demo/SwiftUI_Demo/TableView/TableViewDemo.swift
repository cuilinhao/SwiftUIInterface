//
//  TableViewDemo.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/16.
//

import SwiftUI

struct TableViewDemo: View {
    
    var plans : [String] = ["0","1","2","3","4"]
    
    var body: some View {
        
        Text("Hello, World!")
        
        List {
            
            /** 注释
             
             forEach 获取 index 的方法
             方法一：
             ForEach(0..<plans.count) { index in
             
             方法二：
             ForEach(plans.indices) { index in
             
             */

            ForEach(plans, id:\.self){ plan in
                
                switch plan {
                
                case "0":
                    NavigationLink("TableViewTest", destination: TableViewTest())
                case "1":
                    NavigationLink("TableViewTest02", destination: TableViewTest02())
                default:
                    NavigationLink("03", destination: TableViewTest())
                }
            }
        }
    }
}

struct TableViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TableViewDemo()
    }
}
