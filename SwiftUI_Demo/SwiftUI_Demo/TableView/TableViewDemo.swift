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
        
        actionSheetStruct()
            .padding()
        
        Text("Hello, World!")
        
        Button("cccc"){
            print("+++++++++ +")
        }
        
    }
}

struct actionSheetStruct : View {
    
    /**
     
     action sheets 和 alerts 共享许多相同的功能。两者都是借助 modifier 附加到视图层级 —— alert 用 alert()，而 action sheet 用 actionSheet() —— 两者都是在某个条件成立时由 SwiftUI 自动显示，两者都使用同类的按钮，两者都有一些内建的默认按钮样式：default()，cancel() 和 destructive()。
     
     */
    @State private var showingActionSheet = false
    @State private var backGroundColor = Color.white
    
    
    var body: some View {

        Text(" ActionSheet Test")
            .frame(width: 300, height: 300)
            .foregroundColor(.red)
            //Font.custom("FjallaOne-Regular", size: size)
            .font(.system(size: 30))
            .background(backGroundColor)
            .onTapGesture {
                self.showingActionSheet = true
            }
            .actionSheet(isPresented: $showingActionSheet) {
                    ActionSheet(title: Text("Change background"), message: Text("Select a new color"), buttons: [
                                    .default(Text("Red")){
                                        self.backGroundColor = .red
                                    },
                                    .default(Text("Green")){
                                        self.backGroundColor = .secondary
                                    },
                                    .default(Text("blue")){
                                        self.backGroundColor = .orange
                                    },
                        .cancel()
                    ])
            }
        
    }
    
}

struct TableViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TableViewDemo()
    }
}
