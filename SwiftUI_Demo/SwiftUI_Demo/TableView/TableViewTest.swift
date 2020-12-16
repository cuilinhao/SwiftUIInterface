//
//  TableViewTest.swift
//  SwiftUIDemo
//
//  Created by 崔林豪 on 2020/12/15.
//

import SwiftUI

struct TableViewTest: View {
    
    @State private var ff: String = ""
    
    /** 注释
     //更改TabItem（文本+图标）颜色
     init() {
     
     UITabBar.appearance().unselectedItemTintColor = UIColor.white
     }
     
     更改TabView背景颜色
     init() {
     
     UITabBar.appearance().backgroundColor = UIColor.red
     UITabBar.appearance().backgroundImage = UIImage()
     }
     
     */
    
    // init() {
    //  /** 改变底部tab的颜色 */
    //  UITabBar.appearance().backgroundColor = UIColor.red
    // }
    
    // init() {
    //
    //  UITabBar.appearance().unselectedItemTintColor = UIColor.white
    // }
    
    init() {
        
//        UITabBar.appearance().backgroundColor = UIColor.red
//        UITabBar.appearance().backgroundImage = UIImage()
    }
    
    var body: some View {
        
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
                .background(Color.green)
            
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    //.resizable()
                    //.frame(width: 20, height: 20, alignment: .center)
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
                .background(Color.red)
        }.accentColor(.green)
        .font(.headline)
    }
    
    //accentColorTest()
    //}
    
}


struct accentColorTest: View {
    
    @State private var selection: String = ""
    
    var body: some View {
        
        Text("wrere")
        
        TabView(selection: $selection) {
            NavigationView{
                
            }.navigationBarTitle("Home")
            .tabItem {
                VStack {
                    Image(systemName: "house")
                    Text("Home")
                }
            }
            tag(0)
            
            NavigationView {
                
            }.navigationBarTitle("Setting")
            .tabItem {
                VStack{
                    Image(systemName: "gear")
                    Text("Settings")
                }
            }
            .tag(1)
        }.accentColor(.primary)
    }
    
}

struct TableViewTest_Previews: PreviewProvider {
    static var previews: some View {
        TableViewTest()
    }
}
