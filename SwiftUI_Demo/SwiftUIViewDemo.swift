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
        
        ScrollView {
            
            LazyVStack(alignment: .leading){
                ForEach(plans.indices) { index in
                    
                    switch index {
                    case 0 :
                        HStack {
                            Image("111")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            Text("AnimationDemo")
                                .foregroundColor(Color.pink)
                                .padding()
                        }
                       
                    default:
                        HStack {
                            Image("111")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .cornerRadius(25)
                            Text("AnimationDemo")
                                .foregroundColor(Color.pink)
                                .padding()
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
