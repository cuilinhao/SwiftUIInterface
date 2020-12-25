//
//  SwiftUIViewDemo.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/22.
//

import SwiftUI

struct SwiftUIViewDemo: View {
    
    var plans : [String] = ["1", "2","3","4","5","6","1", "2","3","4","5","6","1", "2","3","4","5","6","1", "2","3","4","5","6","1", "2","3","4","5","6","1", "2","3","4","5","6",]
    
    @State var isActiveTest : Bool = true
    
    
    var body: some View {
        
        Text("Hello, World!")
        ScrollView {
            
            LazyVStack(alignment: .leading){
                ForEach(plans.indices) { index in
                    
                    switch index {
                    case 0 :
                        //NavigationLink("01", destination: TableViewTest())
                        HStack{
                            Image("111")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            
                            NavigationLink(destination: AnimationDemo(), label:{
                                Text("AnimationDemo")
                                    .foregroundColor(Color.pink)
                                    .padding()
                            })
                        }
                    case 1 :
                        //NavigationLink("01", destination: TableViewTest())
                        HStack{
                            Image("111")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            
                            NavigationLink(destination: EquatableViewTest(), label:{
                                Text("EquatableViewTest")
                                    .foregroundColor(Color.pink)
                                    .padding()
                            })
                        }
                    case 2 :
                        //NavigationLink("01", destination: TableViewTest())
                    cellView()
                    case 3 :
                        //NavigationLink("AnimationDemo", destination: AnimationDemo())
                        HStack{
                            Image("111")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            
                            NavigationLink(destination: TableViewDemo(), label:{
                                Text("TableViewDemo")
                                    .foregroundColor(Color.pink)
                                    .padding()
                            })
                        }
                        
                    case 4 :
                        
                        
                        HStack{
                            Image("111")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            
                            NavigationLink(destination: StackDemo(), label:{
                                Text("StackDemo")
                                    .foregroundColor(Color.pink)
                                    .padding()
                            })
                        }
                        
                        
                    case 5 :
                        HStack{
                            Image("111")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            
                            
                            NavigationLink(destination: GesturesDemo(isTap: true, location: CGPoint(x: 10, y: 10), isPush: $isActiveTest), label:{
                                Text("GesturesDemo")
                                    .foregroundColor(Color.pink)
                                    .padding()
                            })
                        }
                    default :
                        HStack{
                            Image("111")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            
                            NavigationLink(destination: ProgressTestView(), label:{
                                Text("ProgressTestView")
                                    .foregroundColor(Color.pink)
                                    .padding()
                            })
                        }
                    }
                }
            }
        }
    }
    
    
      
}


@ViewBuilder func cellView() -> some View {
    
    HStack{
        Image("111")
            .resizable()
            .frame(width: 50, height: 50)
            .cornerRadius(25)
        
        NavigationLink(destination: TableViewTest(), label:{
            Text("TableViewTest")
                .foregroundColor(Color.pink)
                .padding()
        })
    }
}

    
struct SwiftUIViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewDemo()
    }
}
