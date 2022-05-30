//
//  GeometryReaderView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/23.
//

import SwiftUI

/**
 GeometryReader
 
 A container view that defines its content as a function of its own size and coordinate space. — 一个容器View，根据其自身大小和坐标定义其内容。
 
 链接：https://www.jianshu.com/p/f4c336641a1d
 
 定义
 public struct GeometryReader<Content>: View where Content: View {
     public var content: (GeometryProxy) -> Content
     
     @inlinable public init(@ViewBuilder content: @escaping (GeometryProxy) -> Content)

     public typealias Body = Never
 }
 
 GeometryReader中有一个GeometryProxy，它也是一个结构体
 
 public struct GeometryProxy {

     public var size: CGSize { get }

     public subscript<T>(anchor: Anchor<T>) -> T { get }

     public var safeAreaInsets: EdgeInsets { get }

     public func frame(in coordinateSpace: CoordinateSpace) -> CGRect
 }
 
 
 通过GeometryProxy可以拿到父容器布局的相关信息，这个是它能做到自己决定内容的大小与位置的核心，主要作用如下：

 可以通过size: CGSize获取宽和高。
 可以通过safeAreaInsets获取安全区域相关的信息。
 可以通过frame()获取屏幕坐标系的 x 和 y 坐标
 */

//https://www.jianshu.com/p/f4c336641a1d

struct GeometryReaderView: View {
    var body: some View {
        
        ScrollView{
            
            test01()
            //test02()
                //.padding(.top, 10)
                //.padding(.top, 15)
                //设置顶部和底部
                //.padding([.top, .bottom], 20)
                //.padding(.init(top: 30, leading: 30, bottom: 30, trailing: 30))
            
            //test03()
        }
        .background(Color.purple)
        
    }
}

func test01() -> some View {
    
    ScrollView {
        ZStack{
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.green)
                    .frame(width: 300, height: 300)

                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.red)
                    .frame(width: 300, height: 300)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.purple)
                    .frame(width: 300, height: 300)
                Button("trtrtr") {
                    //屏幕宽390
                    print("++++++++\(UIScreen.main.bounds.width)")
                }
               
                ContentViewT()
            }
            
            GeometryReader { geometry in

                VStack {
                    //尺寸
                    // Geometry width 就是scrolleview的宽
                    Text("Geometry width: \(geometry.size.width)")
                    Text("Geometry height: \(geometry.size.height)")

                    //坐标
                    Text("Geometry X : \(geometry.frame(in: .global).origin.x)")
                    Text("Geometry Y: \(geometry.frame(in: .global).origin.y)")
                    Text("Geometry minX: \(geometry.frame(in: .global).minX)")
                    Text("Geometry maxX: \(geometry.frame(in: .global).maxX)")

                    // 安全区域
                    Text("Geometry safeAreaInsets.bottom: \(geometry.safeAreaInsets.bottom)")
                    Text("Geometry safeAreaInsets.top: \(geometry.safeAreaInsets.top)")
                }
            }
        }
    }.edgesIgnoringSafeArea(.all)
    .border(Color.green)
    
}


func test02() -> some View {
 
    ContentViewT()
}

func test03() -> some View {
    
    ContentViewTT()
}


//MARK:--------

/** 在一个VStack中垂直摆放两个元素Text和DIYRectangle，其中DIYRectangle的大小为父容器VStack显示完Text后剩余空间的1/3。 */


struct ContentViewTT: View {
    
    var body: some View {
        VStack {
            Text("下面是一个矩形")
            
            DIYRectangle()
            
        }.frame(width: 150, height: 100)
         .border(Color.black)
    }
}

struct DIYRectangle: View {
    
    var body: some View {
        // geometry的类型为GeometryProxy
        GeometryReader { geometry in
            Rectangle()
                .foregroundColor(Color.blue)
                .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 0.3, alignment: .center)
        }
    }
}




struct FlowRectangle: View {
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 0) {
                
                VStack(spacing: 30){
                    
                    Text("00000000")
                        //距离下面红色方框 30
                        .padding(.bottom, 30)
                    
                    
                    Rectangle()
                        .fill(Color.red)
                        .frame(height: 0.5 * proxy.size.height)
                        
                }
                
                HStack(spacing: 0) {
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 0.5 * proxy.size.width)
                    
                    VStack(spacing: 0){
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 0.5 * proxy.size.width)
                        
                        VStack(spacing: 0) {
                            Rectangle()
                                .fill(Color.blue)
                                .frame(height: 0.25 * proxy.size.height)
                         
                            Rectangle()
                                .fill(Color.yellow)
                                .frame(height: 0.25 * proxy.size.height)
                        }
                        .frame(width: 0.5  * proxy.size.width)
                    }
                }
            }
            
        }
        
    }
}

struct ContentViewT: View {
    
    let screenRect = UIScreen.main.bounds
    
    var body: some View{
      
        VStack{
            
            FlowRectangle()
                .frame(width: 100, height: 200)
            
            FlowRectangle()
                .frame(width: 200, height: 100)
            
            FlowRectangle()
                .frame(width: screenRect.width, height: screenRect.width)
            
        }
        
    }
    
    
    
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}

/*
//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Linhao CUI 崔林豪 on 2022/5/12.
//

import SwiftUI

//.padding(.init(top: 30, leading: 30, bottom: 30, trailing: 30))

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        VStack {
            VStack(alignment: .leading, spacing: 7) {
                HStack {
                    Text("vehicle location sdmfmd")
                        .font(.system(size:19))
                        .fixedSize(horizontal: false, vertical: true)
                    Group {
                        Text("Away from me 23233")
                            .background(Color.green)
                            .font(.system(size:23))
                            //.padding(.trailing, 20+10+30)
                            .lineLimit(1)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                     .transition(.opacity)
                     
                }//.lineLimit(1)

                Group {
                    Text("华夏东路dsfksdfkjdgjdkfgjdfkgjdkfgdkfggfdkj")
                        .background(Color.green)
                }.transition(.opacity)
            }
            .font(.system(size:15))
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(Color.purple)
            .onTapGesture {
                //cameraCoordinate = vehicleCoordinate
            }
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 45)

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


 //
 //  ContentView.swift
 //  TestSwiftUI
 //
 //  Created by Linhao CUI 崔林豪 on 2022/5/12.
 //

 import SwiftUI

 //.padding(.init(top: 30, leading: 30, bottom: 30, trailing: 30))

 struct ContentView: View {
     var body: some View {
         Text("Hello, world!")
             .padding()
         VStack {
             VStack(alignment: .leading, spacing: 7) {
                 HStack {
                     Text("vehicle location sdmfmd")
                         .font(.system(size:19))
                         .fixedSize(horizontal: false, vertical: true)
                     Group {
                         Text("Away from me 23233")
                             .background(Color.green)
                             .font(.system(size:23))
                             //.padding(.trailing, 20+10+30)
                             .lineLimit(1) //设置行数
                             //横向还是竖向换行
                             .fixedSize(horizontal: false, vertical: true)
                     }
                      .transition(.opacity)
                      
                 }//.lineLimit(1)

                 Group {
                     Text("华夏东路dsfksdfkjdgjdkfgjdfkgjdkfgdkfggfdkj")
                         .background(Color.green)
                 }.transition(.opacity)
             }
             .font(.system(size:15))
             .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
             .padding()
             .background(Color.purple)
             .onTapGesture {
                 //cameraCoordinate = vehicleCoordinate
             }
         }
         .padding(.horizontal, 20)
         .padding(.bottom, 45)

         
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }

 
 */
