//
//  GesturesDemo.swift
//  SwiftUILearning_v5.3
//
//  Created by SPDBVIP455SPDBVIP455SPDBVIP455SPDBVIP455 on 2020/12/4.
//

import SwiftUI

struct GesturesDemo: View {//Equatable
//    static func == (lhs: GesturesDemo, rhs: GesturesDemo) -> Bool {
//        lhs.isTap == rhs.isTap
//    }
    
    var randomColor: Color {
        var random = Double.random(in: 0..<255)
        if !isTap {
            random = 200
        }
        return Color(red: random/255.0, green: random/255.0, blue: random/255.0)
    }
    
    //轻拍
    @State var isTap:Bool = false
    var tap: some Gesture {
        TapGesture(count: 1).onEnded { (_) in
            self.isTap = !self.isTap
        }
    }
    //长按
    var longPress: some Gesture {
        LongPressGesture().onChanged({ (flag) in
            print("flag = \(flag)")
        }).onEnded({ (finished) in
            print("finished = \(finished)")
        })
    }
    //拖拽
    @State var location:CGPoint = CGPoint.init(x: 0, y: 0)
    var drag:some Gesture {
        DragGesture().onChanged { (value) in
            print("flag = \(value.location)")
            self.location = value.location
        }
        .onEnded { (finished) in
            print("finished = \(finished)")
        }
    }
    
    @Binding var isPush:Bool
    
    var body: some View {
//        NavigationView {
            Form {
                Text("Hello, World!")
                    .background(randomColor)
                    .offset(x: location.x, y: location.y)
        //            .gesture(tap)
        //            .gesture(longPress)
                    .gesture(drag)
                    
            }
    //        .navigationTitle("xxz")
            .navigationBarTitle(Text("xxz"), displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button("返回", action: {
                self.isPush = false
            }).foregroundColor(.yellow))
            //.modifier(NavigationBarModifier(bgColor: .green, fontColor: .red))
//            .background(NavigationConfigurator(configure: { (nav) in
//                nav.navigationBar.barTintColor = .yellow
//            }))
//        }
    }
}

//struct GesturesDemo_Previews: PreviewProvider {
//    static var previews: some View {
//        GesturesDemo()
//    }
//}
