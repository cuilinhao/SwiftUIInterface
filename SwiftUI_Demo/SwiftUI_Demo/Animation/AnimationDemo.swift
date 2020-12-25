//
//  AnimationDemo.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/22.
//

import SwiftUI

struct AnimationDemo: View {
    
    var plans : [String] = ["1", "2","3","4","5"]
    
    var body: some View {
        
        Text("Hello, World!")
        
        ScrollView {
            LazyVStack(alignment: .leading){
                ForEach(plans.indices) { index in
                    
                    switch index {
                    case 0:
                        HStack{
                            NavigationLink(" DrawingSwiftUIView", destination: DrawingSwiftUIView())
                                .frame(width: 260, height: 50)
                                .foregroundColor(.green)
                        }

                    case 1 :
                        HStack{
                             NavigationLink("GeometryReaderView", destination: GeometryReaderView())
                                .frame(width: 260, height: 50)
                                .foregroundColor(.purple)
                        }
                        
                    case 2 :
                        HStack{
                            NavigationLink("03", destination: TableViewTest())
                                .frame(width: 260, height: 50)
                                .foregroundColor(.pink)
                        }
                    case 3 :
                        HStack{
                            NavigationLink("04", destination: TableViewTest())
                                .frame(width: 50, height: 50)
                                .foregroundColor(.pink)
                        }
                    case 4 :
                        HStack{
                            NavigationLink("03", destination: TableViewTest())
                                .frame(width: 50, height: 50)
                        }
                    case 5 :
                        NavigationLink("04", destination: TableViewTest())
                    default :
                        NavigationLink("05", destination: TableViewTest())
                        
                    }
                    
                }
            }
            
        }
    }
}

struct AnimationDemo_Previews: PreviewProvider {
    static var previews: some View {
        AnimationDemo()
    }
}
