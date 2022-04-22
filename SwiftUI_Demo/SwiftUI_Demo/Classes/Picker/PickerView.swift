//
//  PickerView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/11.
//

import SwiftUI

struct PickerView: View {
    
    @State var ss: String = "234"
    
    var body: some View {
        
        
        VStack{
            
            Text("q3ew")
            test111()
            Divider()
                .background(Color.green)
                //改变高度
                //.scaleEffect(CGSize(width: 1, height: 100))
                //.frame(width: 100, height: 1, alignment: .center)
            
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    GeometryReader{
                        let size = $0.size
                        Rectangle()
                            .fill(Color.red)
                            .frame(width: size.width, height: size.height, alignment: .center)
                            .shadow(color: Color.green.opacity(1.0), radius: 30, x: 0.0, y: 0.0)
                    }
                )
            
            /** ****改变横线的宽度***
             方法1：
             Divider()
                 .background(Color.green)
                 //改变高度
                 .scaleEffect(CGSize(width: 1, height: 100))
                 .frame(width: 100, height: 1, alignment: .center)
             
             方法2：
             .frame(width: 100, height: 100, alignment: .center)
             .overlay(
                 GeometryReader{
                     let size = $0.size
                     Rectangle()
                         .fill(Color.red)
                         .frame(width: size.width, height: size.height, alignment: .center)
                         .shadow(color: Color.green.opacity(1.0), radius: 30, x: 0.0, y: 0.0)
                 }
             )
             
             ** */
            
            Text("e3434")
            
            testPicker()
            
        }
        .modifier(pf_navigationTitleColor(bgColor: UIColor(.green), fontColor: .yellow))
        .navigationBarTitle("Picker Test")
    }
}

func test111() -> some View {
    //Text("wrer")
    Button("rrr") {
        print("233")
    }
}

/**
2种写法
 第一种 func 前面不写 @ViewBuilder 里面 Picker前面不需要return
 
 因为swift的view构建器， ViewBuilder 帮我们做了很多，ViewBuilder把必报里面符合view协议的放在元祖里面，
 系统把元祖里面符合view协议的转成view
 可以理解为ViewBuilder就相当于oc的runtime

 @ViewBuilder func testPicker() -> some View {
     
     var ss: String = "sfds"
     let bing = Binding {
         ss
     } set: {
         ss = $0
     }
     
     Picker("test", selection: bing) {
         Text("1")
         Text("2")
         Text("3")
         Text("4")
         Text("5")
     }
 
 第二种 func 前面不写 @ViewBuilder
  func testPicker() -> some View {
     
     var ss: String = "sfds"
     let bing = Binding {
         ss
     } set: {
         ss = $0
     }
     
    return Picker("test", selection: bing) {
         Text("1")
         Text("2")
         Text("3")
         Text("4")
         Text("5")
     }
 */

@ViewBuilder func testPicker() -> some View {
    
    VStack {
        var ss: String = "sfds"
        let bing = Binding {
            ss
        } set: {
            ss = $0
        }
        Picker("test", selection: bing) {
            Text("1")
            Text("2")
            Text("3")
            Text("4")
            Text("5")
        }
        .background(Color.pink)
        .foregroundColor(.green)
        
        .padding()
        
        Picker("test", selection: bing) {
            Text("1")
            Text("2")
            Text("3")
            Text("4")
                .foregroundColor(.yellow)
            Text("5")
                .foregroundColor(.yellow)
        }
    }
}



struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
