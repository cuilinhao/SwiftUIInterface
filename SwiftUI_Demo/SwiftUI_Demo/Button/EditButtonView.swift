//
//  EditButtonView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/7.
//

import SwiftUI

struct EditButtonView: View {
    
    @State private var fruits = ["Apple", "Banana","Papaya","Mango"]
    var body: some View {
        
        VStack{
                List{
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                    }
                    .onMove(perform: { indices, newOffset in
                        print("++++++++++")
                    })
                    .onDelete { indexSet in
                        print("_____删除——————");
                        //删除
                        //self.fruits.remove(atOffsets: indexSet)
                        self.fruits.remove(at: 0)
                    }
                }
            //分割线
            Divider()
            
            EditButton()
                .animation(.none)
                //.padding()
                //隐藏导航栏
//                .navigationBarHidden(true)
            .navigationTitle("Fruits")
              
        }
        .navigationBarTitle("test", displayMode: .automatic)
        .modifier(pf_navigationTitleColor(bgColor: .green, fontColor: .cyan))
    }
}


struct EditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonView()
    }
}
