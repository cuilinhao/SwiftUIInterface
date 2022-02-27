//
//  TextUIView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/11/30.
//

import SwiftUI


struct TextUIView: View {
    var body: some View {
        
        VStack{
            //textTest()
            textTest2()
        }
        
    }
}


func textTest2() -> some View {
    
    VStack{
        Text("Placeholde")
            .frame(minWidth: 50, idealWidth: 100, maxWidth: 50, minHeight: 10, idealHeight: 100, maxHeight: 200, alignment: .leading)
            .background(Color.pink)
            //.fixedSize()
            
            .fixedSize(horizontal: true, vertical: false)
            //原点
            .position(x: 100.0, y: 100)
            //.ignoresSafeArea(.keyboard, edges: .all)
            //.ignoresSafeArea(.init(rawValue: 20), edges: .trailing)
//            .coordinateSpace(name: "wererere")

            //.accessibilityLabel("Test")
            .accessibility(label: Text("hahahha"))
    }
    
}

func textTest() -> some View {
    VStack{
        
        Text("Hamlet")
            .font(.title)
            .background(Color.gray)
        
        Text("By william Shakespeare")
            //serif 衬线
            .font(.system(size: 23, weight: .light, design: .serif))
            //italic 斜线
            .italic()
            .foregroundColor(.red)
            .frame(width: 100)
        //UITextView(frame: CGRect(x: 100, y: 100, width: 100, height: 100), textContainer: NSTextContainer)
        
        Text("This is a long string that demonstrates the effect of SwuiftUI's lineLimit(:_) operator.")
         .frame(width: 200, height: 200, alignment: .leading)
        //限制2行
         .lineLimit(2)
            .multilineTextAlignment(.trailing)
        
        Text("awewewewewשָׁלוֹם")
            
            //A view that conditionally flips its contents horizontally
            ///   when the layout direction is right-to-left
            //有条件地水平翻转其内容的视图
            ///当布局方向从右到左时
           .flipsForRightToLeftLayoutDirection(true)
    }
}



struct TextUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextUIView()
    }
}
