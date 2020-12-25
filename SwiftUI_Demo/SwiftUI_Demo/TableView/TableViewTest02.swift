
//
//  TableViewTest02.swift
//  SwiftUIDemo
//
//  Created by 崔林豪 on 2020/12/15.
//

import SwiftUI

/*

 */

struct TableViewTest02: View {
    
    @State private var selection: String = ""
    
    init() {

        UITabBar.appearance().backgroundColor = UIColor.green
        UITabBar.appearance().backgroundImage = UIImage()
    }
    
    var body: some View {
        
        
        TabView {
            
            Text("000")
            .tabItem {
                Label {
                    Text("xxz")
                } icon: {
                    Image(systemName: "house")
                }
                
                
            }
            .tag(0)
            
            Text("111")
            .tabItem {
                Label {
                    Text("xxz")
                } icon: {
                    Image(systemName: "house")
                }
            }
            .tag(1)
            
            Text("22")
            .tabItem {
                VStack{
                    Image(systemName: "gear")
                    Text("Settings1")
                }
            }
            .tag(2)

        }
        .modifier(pf_navigationTitleColor(bgColor: UIColor(.pink), fontColor: .green))
        /** 注释
         someSubView{
         //your code here
         }.onAppear(perform: {
                         UITabBar.appearance().isHidden = true
                     })
         )
         */
//        .onAppear(perform: {
//            UITabBar.appearance().isHidden = true
//        })
    }
}

/**
 
 */


struct TableViewTest02_Previews: PreviewProvider {
    static var previews: some View {
        TableViewTest02()
    }
}
