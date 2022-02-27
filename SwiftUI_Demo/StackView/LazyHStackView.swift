//
//  LazyHStackView.swift
//  SwiftUI_Demo
//
//  Created by 天下林子 on 2020/12/15.
//

import SwiftUI

struct LazyHStackView: View {
    
    var plans : [String] = ["1", "2","3","4","5","6","1", "2","3","4","5","6","1", "2","3","4","5","6","1", "2","3","4","5","6","1", "2","3","4","5","6","1", "2","3","4","5","6",]
    
    var body: some View {
        Text("Hello, World!")
       
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(plans.indices) { index in
                    
                    switch index {
                    case 1:
                        //NavigationLink("", destination: GesturesDemo())
                        NavigationLink("01", destination: TableViewTest())
                    case 2:
                        //NavigationLink("", destination: GesturesDemo())
                        NavigationLink("2", destination: TableViewTest())
                    case 3:
                        //NavigationLink("", destination: GesturesDemo())
                        NavigationLink("3", destination: TableViewTest())
                    case 4:
                        //NavigationLink("", destination: GesturesDemo())
                        NavigationLink("4", destination: TableViewTest())
                    case 5:
                        //NavigationLink("", destination: GesturesDemo())
                        NavigationLink("01", destination: TableViewTest())
                    default:
                        //NavigationLink("", destination: GesturesDemo())
                        NavigationLink("01", destination: TableViewTest())
                    }
                }
            }
        }
        
    }
}

struct LazyHStackView_Previews: PreviewProvider {
    static var previews: some View {
        
        LazyHStackView()
    }
}
